# WP-CLI Plugin Install Check

This script uses WP-CLI to check if any new plugins have been added to a WordPress site in the last 48 hours.

## Prerequisites

- WP-CLI must be installed on the server.

## Usage

1. Connect to the server using SSH.
2. Navigate to the WordPress installation directory.
3. Run the script with the following command:

bash plugin-install-check.sh

## Output

The script will output a warning message for each plugin that was installed within the last 48 hours. If no new plugins were installed within the time frame, the script will output a success message.

## Customization
To change the number of hours to check, you can modify the value of the hours variable at the top of the script.

## Usage

1. Connect to the server using SSH.
2. Navigate to the WordPress installation directory.
3. Run the script with the following command:

```bash
bash plugin-install-check.sh
