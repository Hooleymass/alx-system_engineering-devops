#!/usr/bin/python3

import sys
import requests
"""
Author: HooleyMass
"""


def get_employee_info(employee_id):
    """
    Retrieve and display information about an employee's TODO list progress.

    Args:
        employee_id (int): The ID of the employee.

    Returns:
        None
    """
    base_url = "https://jsonplaceholder.typicode.com/"
    user_url = f"{base_url}users/{employee_id}"
    todos_url = f"{base_url}todos?userId={employee_id}"

    # Fetch user information
    user_response = requests.get(user_url)
    user_data = user_response.json()
    employee_name = user_data.get('name')

    # Fetch TODO list information
    todos_response = requests.get(todos_url)
    todos_data = todos_response.json()

    # Count completed tasks
    completed_tasks = [task for task in todos_data if task['completed']]
    num_completed_tasks = len(completed_tasks)
    total_tasks = len(todos_data)

    # Display employee TODO list progress
    print(f"Employee {employee_name} is done with tasks({num_completed_tasks}/{total_tasks}):")

    # Display titles of completed tasks
    for task in completed_tasks:
        print(f"\t{task['title']}")

if __name__ == "__main__":
    # Check if the correct number of command-line arguments is provided
    if len(sys.argv) != 2:
        print("Usage: ./script.py <employee_id>")
        sys.exit(1)

    employee_id = sys.argv[1]

    # Ensure the provided argument is an integer
    try:
        employee_id = int(employee_id)
    except ValueError:
        print("Please provide a valid integer for the employee ID.")
        sys.exit(1)

    # Call the function to get and display employee TODO list progress
    get_employee_info(employee_id)

