Setup
=====

#. Clone this repository
#. Replace vimrc with the following::
   
    fun! MySys()
        " return "windows"
        " return "linux"
        " return "max"
    endfun

    set runtimepath=<repository>,$VIMRUNTIME
    source <repository>/_vimrc

#. Replace <repository> with absolute path to this repository
#. Uncomment the line in fun! MySys which corresponds to your OS
