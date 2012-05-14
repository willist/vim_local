Setup
=====

#. Clone this repository
#. Replace vimrc with the following::
   
    fun! MySys()
        " return "windows"
        " return "linux"
        " return "mac"
    endfun

    let $VIMLOCAL = '<repository>'
    let $VIMFILES = '<repository>/vimfiles'

    set runtimepath=$VIMFILES,$VIMRUNTIME
    source $VIMLOCAL/_vimrc

#. Replace <repository> with absolute path to this repository
#. Uncomment the line in fun! MySys which corresponds to your OS
