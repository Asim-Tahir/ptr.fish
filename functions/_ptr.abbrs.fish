function _ptr.abbrs -d "Initialize PowerToys Run Plugin Manager(ptr) abbreviations"
    # PowerToys Run Plugin Manager abbreviations

    # Core Commands
    abbr -a -g ptri       ptr init
    abbr -a -g ptra       ptr add
    abbr -a -g ptru       ptr update
    abbr -a -g ptrua      ptr update --all
    abbr -a -g ptrr       ptr remove
    abbr -a -g ptrl       ptr list
    
    # Pin Management
    abbr -a -g ptrp       ptr pin
    abbr -a -g ptrpa      ptr pin add
    abbr -a -g ptrpr      ptr pin remove
    abbr -a -g ptrpl      ptr pin list
    abbr -a -g ptrprs     ptr pin reset
    
    # System & Utility
    abbr -a -g ptrim      ptr import  # Changed from ptri to avoid duplicate
    abbr -a -g ptrrt      ptr restart # Changed from ptrrs to avoid duplicate
    abbr -a -g ptre       ptr edit
    abbr -a -g ptrsu      ptr self-update
end
