# Oh My Fish initialization
# $path is only defined for oh-my-fish. home-manager activates this plugin by
# adding the full path of functions/ to fish_function_path, and then sourcing
# init.fish, so let's skip sourcing _ptr.init.fish before calling _ptr.init.
set -l _ptr_init_path "$path/functions/_ptr.init.fish"
if [ -f "$_ptr_init_path" ];
    source "$_ptr_init_path"
end

_ptr.init