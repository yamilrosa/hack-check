# Prompt the user for the number of hours to check
read -p "Enter the number of hours to check: " hours

# Calculate the time the specified number of hours ago
hours_ago=$((current_time - hours*60*60))

# Get a list of all plugins installed on the site
plugins=$(wp plugin list --field=name)

# Check if any of the plugins were installed within the specified time frame
echo "Checking for new plugins installed in the last $hours hours..."
for plugin in $plugins; do
  # Get the install time for the plugin
  install_time=$(wp plugin get $plugin --field=installed_at)

  # Convert the install time to a Unix timestamp
  install_time=$(date -d "$install_time" +%s)

  # Check if the plugin was installed within the specified time frame
  if [ $install_time -gt $hours_ago ]; then
    echo "Warning: $plugin was installed within the last $hours hours."
  fi
done

echo "Finished checking for new plugins."
