#!/usr/bin/env nu
#****************************************************************************#
# Filename      : install-winget-apps.nu
# Created       : Sun Jun 02 2024
# Author        : Zolo
# Github        : https://github.com/zolodev
# Description   : Run the following file as a normal user to install apps.
#****************************************************************************#


# Importing apps from file
def "main install-full" [] {
    print "Installing All apps..."
    winget import -i ./config/winget-apps.json --accept-package-agreements --accept-source-agreements --verbose;
}

# Installing minimum and essential apps
def "main install-min" [] {
    print "Installing minimum..."
    winget import -i ./config/winget-apps-min.json --accept-package-agreements --accept-source-agreements --verbose;
}

# Upgrading installed packages
def "main upgrade" [] {
    print "Upgrading packages...";
    winget upgrade --all --include-unknown --verbose;
}

def main [] {
    print "\n\tThis script can be runned with argument like <install-min> | <install-full> | <upgrade>\n";
    print "\tUsage:"
    print "\t\t$ nu install-winget-apps.nu upgrade\n"
}