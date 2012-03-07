Setup
=====

#. Clone this repository
#. Replace vimrc with the following::
   
    fun! MySys()
        return "windows"
    endfun

    set runtimepath=<repository>,$VIMRUNTIME
    source <repository>/_vimrc

where <repository> is the location of the cloned repository.


