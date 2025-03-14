function __ptr_complete_no_subcommand
    set -l cmd (commandline -poc)
    if [ (count $cmd) -eq 1 ]
        return 0
    end
    return 1
end

# Main ptr command completions
complete -c ptr -f -n __ptr_complete_no_subcommand -s h -l help -d 'Print help'
complete -c ptr -f -n __ptr_complete_no_subcommand -s V -l version -d 'Print version'
complete -c ptr -f -n __ptr_complete_no_subcommand -a init -d 'Try to find and add existing plugins to config'
complete -c ptr -f -n __ptr_complete_no_subcommand -a add -d 'Add a plugin'
complete -c ptr -f -n __ptr_complete_no_subcommand -a a -d 'Add a plugin'
complete -c ptr -f -n __ptr_complete_no_subcommand -a update -d 'Update plugins'
complete -c ptr -f -n __ptr_complete_no_subcommand -a u -d 'Update plugins'
complete -c ptr -f -n __ptr_complete_no_subcommand -a remove -d 'Remove plugins'
complete -c ptr -f -n __ptr_complete_no_subcommand -a r -d 'Remove plugins'
complete -c ptr -f -n __ptr_complete_no_subcommand -a list -d 'List all installed plugins'
complete -c ptr -f -n __ptr_complete_no_subcommand -a l -d 'List all installed plugins'
complete -c ptr -f -n __ptr_complete_no_subcommand -a pin -d 'Pin plugins so it\'s not updated with `update --all`'
complete -c ptr -f -n __ptr_complete_no_subcommand -a p -d 'Pin plugins so it\'s not updated with `update --all`'
complete -c ptr -f -n __ptr_complete_no_subcommand -a import -d 'Import plugins from configuration file'
complete -c ptr -f -n __ptr_complete_no_subcommand -a i -d 'Import plugins from configuration file'
complete -c ptr -f -n __ptr_complete_no_subcommand -a restart -d 'Restart PowerToys'
complete -c ptr -f -n __ptr_complete_no_subcommand -a edit -d 'Open config file in default editor'
complete -c ptr -f -n __ptr_complete_no_subcommand -a self-update -d 'Self update to latest'
complete -c ptr -f -n __ptr_complete_no_subcommand -a completion -d 'Generate shell completion (PowerShell)'
complete -c ptr -f -n __ptr_complete_no_subcommand -a help -d 'Print this message or the help of the given subcommand(s)'

# init subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains init (commandline -poc)' -s h -l help -d 'Print help'

# add subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains add (commandline -poc)' -s v -l version -d 'Target version'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains add (commandline -poc)' -s p -l pattern -d 'Asset match pattern (rust regex)'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains add (commandline -poc)' -s h -l help -d 'Print help'

# a (add alias) subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains a (commandline -poc)' -s v -l version -d 'Target version'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains a (commandline -poc)' -s p -l pattern -d 'Asset match pattern (rust regex)'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains a (commandline -poc)' -s h -l help -d 'Print help'

# update subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains update (commandline -poc)' -s v -l version -d 'Version to update'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains update (commandline -poc)' -s a -l all -d 'Update all plugins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains update (commandline -poc)' -s h -l help -d 'Print help'

# u (update alias) subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains u (commandline -poc)' -s v -l version -d 'Version to update'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains u (commandline -poc)' -s a -l all -d 'Update all plugins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains u (commandline -poc)' -s h -l help -d 'Print help'

# remove subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains remove (commandline -poc)' -s h -l help -d 'Print help'

# r (remove alias) subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains r (commandline -poc)' -s h -l help -d 'Print help'

# list subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains list (commandline -poc)' -s h -l help -d 'Print help'

# l (list alias) subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains l (commandline -poc)' -s h -l help -d 'Print help'

# pin subcommand
function __ptr_pin_no_subcommand
    set -l cmd (commandline -poc)
    if contains -- pin $cmd; and not contains -- add $cmd; and not contains -- remove $cmd; and not contains -- list $cmd; and not contains -- reset $cmd; and not contains -- a $cmd; and not contains -- r $cmd; and not contains -- l $cmd
        return 0
    end
    return 1
end

complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_pin_no_subcommand' -s h -l help -d 'Print help'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_pin_no_subcommand' -a add -d 'Add pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_pin_no_subcommand' -a a -d 'Add pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_pin_no_subcommand' -a remove -d 'Remove pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_pin_no_subcommand' -a r -d 'Remove pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_pin_no_subcommand' -a list -d 'List pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_pin_no_subcommand' -a l -d 'List pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_pin_no_subcommand' -a reset -d 'Clear all pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_pin_no_subcommand' -a help -d 'Print this message or the help of the given subcommand(s)'

# p (pin alias) subcommand
function __ptr_p_no_subcommand
    set -l cmd (commandline -poc)
    if contains -- p $cmd; and not contains -- add $cmd; and not contains -- remove $cmd; and not contains -- list $cmd; and not contains -- reset $cmd; and not contains -- a $cmd; and not contains -- r $cmd; and not contains -- l $cmd
        return 0
    end
    return 1
end

complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_p_no_subcommand' -s h -l help -d 'Print help'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_p_no_subcommand' -a add -d 'Add pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_p_no_subcommand' -a a -d 'Add pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_p_no_subcommand' -a remove -d 'Remove pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_p_no_subcommand' -a r -d 'Remove pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_p_no_subcommand' -a list -d 'List pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_p_no_subcommand' -a l -d 'List pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_p_no_subcommand' -a reset -d 'Clear all pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_p_no_subcommand' -a help -d 'Print this message or the help of the given subcommand(s)'

# pin add subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains pin (commandline -poc); and contains add (commandline -poc)' -s h -l help -d 'Print help'

# pin a subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains pin (commandline -poc); and contains a (commandline -poc)' -s h -l help -d 'Print help'

# p add subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains p (commandline -poc); and contains add (commandline -poc)' -s h -l help -d 'Print help'

# p a subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains p (commandline -poc); and contains a (commandline -poc)' -s h -l help -d 'Print help'

# pin remove subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains pin (commandline -poc); and contains remove (commandline -poc)' -s h -l help -d 'Print help'

# pin r subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains pin (commandline -poc); and contains r (commandline -poc)' -s h -l help -d 'Print help'

# p remove subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains p (commandline -poc); and contains remove (commandline -poc)' -s h -l help -d 'Print help'

# p r subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains p (commandline -poc); and contains r (commandline -poc)' -s h -l help -d 'Print help'

# pin list subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains pin (commandline -poc); and contains list (commandline -poc)' -s h -l help -d 'Print help'

# pin l subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains pin (commandline -poc); and contains l (commandline -poc)' -s h -l help -d 'Print help'

# p list subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains p (commandline -poc); and contains list (commandline -poc)' -s h -l help -d 'Print help'

# p l subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains p (commandline -poc); and contains l (commandline -poc)' -s h -l help -d 'Print help'

# pin reset subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains pin (commandline -poc); and contains reset (commandline -poc)' -s h -l help -d 'Print help'

# p reset subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains p (commandline -poc); and contains reset (commandline -poc)' -s h -l help -d 'Print help'

# import subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains import (commandline -poc)' -s d -l dry-run -d 'Update the configuration file without downloading the plugin'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains import (commandline -poc)' -s h -l help -d 'Print help'

# i (import alias) subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains i (commandline -poc)' -s d -l dry-run -d 'Update the configuration file without downloading the plugin'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains i (commandline -poc)' -s h -l help -d 'Print help'

# restart subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains restart (commandline -poc)' -s h -l help -d 'Print help'

# edit subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains edit (commandline -poc)' -s h -l help -d 'Print help'

# self-update subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains self-update (commandline -poc)' -s h -l help -d 'Print help'

# completion subcommand
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and contains completion (commandline -poc)' -s h -l help -d 'Print help'

# help subcommand
function __ptr_help_no_subcommand
    set -l cmd (commandline -poc)
    if [ (count $cmd) -eq 2 ]; and [ $cmd[2] = help ]
        return 0
    end
    return 1
end

complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_no_subcommand' -a init -d 'Try to find and add existing plugins to config'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_no_subcommand' -a add -d 'Add a plugin'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_no_subcommand' -a update -d 'Update plugins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_no_subcommand' -a remove -d 'Remove plugins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_no_subcommand' -a list -d 'List all installed plugins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_no_subcommand' -a pin -d 'Pin plugins so it\'s not updated with `update --all`'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_no_subcommand' -a import -d 'Import plugins from configuration file'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_no_subcommand' -a restart -d 'Restart PowerToys'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_no_subcommand' -a edit -d 'Open config file in default editor'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_no_subcommand' -a self-update -d 'Self update to latest'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_no_subcommand' -a completion -d 'Generate shell completion (PowerShell)'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_no_subcommand' -a help -d 'Print this message or the help of the given subcommand(s)'

# help pin subcommand
function __ptr_help_pin_no_subcommand
    set -l cmd (commandline -poc)
    if [ (count $cmd) -eq 3 ]; and [ $cmd[2] = help ]; and [ $cmd[3] = pin ]
        return 0
    end
    return 1
end

complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_pin_no_subcommand' -a add -d 'Add pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_pin_no_subcommand' -a remove -d 'Remove pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_pin_no_subcommand' -a list -d 'List pins'
complete -c ptr -f -n 'not __ptr_complete_no_subcommand; and __ptr_help_pin_no_subcommand' -a reset -d 'Clear all pins'
