astyle-r2
=========

Fork of astyle-2.04 to get it used to the r2 indentation rules

                     Artistic Style 2.04
                     Maintained by: Jim Pattee
                     Original Author: Tal Davidson

Usage  :  astyle [options] Source1.cpp Source2.cpp  [...]
          astyle [options] < Original > Beautified

When indenting a specific file, the resulting indented file RETAINS the
original file-name. The original pre-indented file is renamed, with a
suffix of ".orig" added to the original filename.

Wildcards (* and ?) may be used in the filename.
A 'recursive' option can process directories recursively.

By default, astyle is set up to indent C/C++/C#/Java files, with four
spaces per indent, a maximal indentation of 40 spaces inside continuous
statements, a minimum indentation of eight spaces inside conditional
statements, and NO formatting options.

Option Format:
--------------
    Long options (starting with '--') must be written one at a time.
    Short options (starting with '-') may be appended together.
    Thus, -bps4 is the same as -b -p -s4.

Default Option File:
---------------------
    Artistic Style looks for a default options file in the
    following order:
    1. The contents of the ARTISTIC_STYLE_OPTIONS environment
       variable if it exists.
    2. The file called .astylerc in the directory pointed to by the
       HOME environment variable ( i.e. $HOME/.astylerc ).
    3. The file called astylerc in the directory pointed to by the
       USERPROFILE environment variable ( i.e. %USERPROFILE%\astylerc ).
    If a default options file is found, the options in this file
    will be parsed BEFORE the command-line options.
    Long options within the default option file may be written without
    the preliminary '--'.

Bracket Style Options:
----------------------
    --style=allman  OR  --style=ansi   OR  --style=bsd
                    OR  --style=break  OR  -A1
    Allman style formatting/indenting.
    Broken brackets.

    --style=java  OR  --style=attach  OR  -A2
    Java style formatting/indenting.
    Attached brackets.

    --style=kr  OR  --style=k&r  OR  --style=k/r  OR  -A3
    Kernighan & Ritchie style formatting/indenting.
    Linux brackets.

    --style=stroustrup  OR  -A4
    Stroustrup style formatting/indenting.
    Stroustrup brackets.

    --style=whitesmith  OR  -A5
    Whitesmith style formatting/indenting.
    Broken, indented brackets.
    Indented class blocks and switch blocks.

    --style=banner  OR  -A6
    Banner style formatting/indenting.
    Attached, indented brackets.
    Indented class blocks and switch blocks.

    --style=gnu  OR  -A7
    GNU style formatting/indenting.
    Broken brackets, indented blocks.

    --style=linux  OR  --style=knf  OR  -A8
    Linux style formatting/indenting.
    Linux brackets, minimum conditional indent is one-half indent.

    --style=horstmann  OR  -A9
    Horstmann style formatting/indenting.
    Run-in brackets, indented switches.

    --style=1tbs  OR  --style=otbs  OR  -A10
    One True Brace Style formatting/indenting.
    Linux brackets, add brackets to all conditionals.

    --style=google  OR  -A14
    Google style formatting/indenting.
    Attached brackets, indented class modifiers.

    --style=pico  OR  -A11
    Pico style formatting/indenting.
    Run-in opening brackets and attached closing brackets.
    Uses keep one line blocks and keep one line statements.

    --style=lisp  OR  -A12
    Lisp style formatting/indenting.
    Attached opening brackets and attached closing brackets.
    Uses keep one line statements.

Tab Options:
------------
    default indent option
    If no indentation option is set, the default
    option of 4 spaces per indent will be used.

    --indent=spaces=#  OR  -s#
    Indent using # spaces per indent. Not specifying #
    will result in a default of 4 spaces per indent.

    --indent=tab  OR  --indent=tab=#  OR  -t  OR  -t#
    Indent using tab characters, assuming that each
    indent is # spaces long. Not specifying # will result
    in a default assumption of 4 spaces per indent.

    --indent=force-tab=#  OR  -T#
    Indent using tab characters, assuming that each
    indent is # spaces long. Force tabs to be used in areas
    AStyle would prefer to use spaces.

    --indent=force-tab-x=#  OR  -xT#
    Allows the tab length to be set to a length that is different
    from the indent length. This may cause the indentation to be
    a mix of both spaces and tabs. This option sets the tab length.

Bracket Modify Options:
-------------------------
    --attach-namespaces  OR  -xn
    Attach brackets to a namespace statement.

    --attach-classes  OR  -xc
    Attach brackets to a class statement.

    --attach-inlines  OR  -xl
    Attach brackets to class inline function definitions.

    --attach-extern-c  OR  -xk
    Attach brackets to an extern "C" statement.

Indentation Options:
--------------------
    --indent-classes  OR  -C
    Indent 'class' blocks so that the entire block is indented.

    --indent-modifiers  OR  -xG
    Indent 'class' access modifiers, 'public:', 'protected:' or
    'private:', one half indent. The rest of the class is not
    indented. 

    --indent-switches  OR  -S
    Indent 'switch' blocks, so that the inner 'case XXX:'
    headers are indented in relation to the switch block.

    --indent-cases  OR  -K
    Indent case blocks from the 'case XXX:' headers.
    Case statements not enclosed in blocks are NOT indented.

    --indent-namespaces  OR  -N
    Indent the contents of namespace blocks.

    --indent-labels  OR  -L
    Indent labels so that they appear one indent less than
    the current indentation level, rather than being
    flushed completely to the left (which is the default).

    --indent-preproc-define  OR  -w
    --indent-preprocessor has been depreciated.
    Indent multi-line preprocessor #define statements.

    --indent-preproc-cond  OR  -xw
    Indent preprocessor conditional statements #if/#else/#endif
    to the same level as the source code.

    --indent-col1-comments  OR  -Y
    Indent line comments that start in column one.

    --min-conditional-indent=#  OR  -m#
    Indent a minimal # spaces in a continuous conditional
    belonging to a conditional header.
    The valid values are:
    0 - no minimal indent.
    1 - indent at least one additional indent.
    2 - indent at least two additional indents.
    3 - indent at least one-half an additional indent.
    The default value is 2, two additional indents.

    --max-instatement-indent=#  OR  -M#
    Indent a maximal # spaces in a continuous statement,
    relative to the previous line.
    The valid values are 40 thru 120.
    The default value is 40.

Padding Options:
----------------
    --break-blocks  OR  -f
    Insert empty lines around unrelated blocks, labels, classes, ...

    --break-blocks=all  OR  -F
    Like --break-blocks, except also insert empty lines 
    around closing headers (e.g. 'else', 'catch', ...).

    --pad-oper  OR  -p
    Insert space padding around operators.

    --pad-paren  OR  -P
    Insert space padding around parenthesis on both the outside
    and the inside.

    --pad-paren-out  OR  -d
    Insert space padding around parenthesis on the outside only.

    --pad-first-paren-out  OR  -xd
    Insert space padding around first parenthesis in a series on
    the outside only.

    --pad-paren-in  OR  -D
    Insert space padding around parenthesis on the inside only.

    --pad-header  OR  -H
    Insert space padding after paren headers (e.g. 'if', 'for'...).

    --unpad-paren  OR  -U
    Remove unnecessary space padding around parenthesis. This
    can be used in combination with the 'pad' options above.

    --delete-empty-lines  OR  -xd
    Delete empty lines within a function or method.
    It will NOT delete lines added by the break-blocks options.

    --fill-empty-lines  OR  -E
    Fill empty lines with the white space of their
    previous lines.

    --align-pointer=type    OR  -k1
    --align-pointer=middle  OR  -k2
    --align-pointer=name    OR  -k3
    Attach a pointer or reference operator (*, &, or ^) to either
    the operator type (left), middle, or operator name (right).
    To align the reference separately use --align-reference.

    --align-reference=none    OR  -W0
    --align-reference=type    OR  -W1
    --align-reference=middle  OR  -W2
    --align-reference=name    OR  -W3
    Attach a reference operator (&) to either
    the operator type (left), middle, or operator name (right).
    If not set, follow pointer alignment.

Formatting Options:
-------------------
    --break-closing-brackets  OR  -y
    Break brackets before closing headers (e.g. 'else', 'catch', ...).
    Use with --style=java, --style=kr, --style=stroustrup,
    --style=linux, or --style=1tbs.

    --break-elseifs  OR  -e
    Break 'else if()' statements into two different lines.

    --add-brackets  OR  -j
    Add brackets to unbracketed one line conditional statements.

    --add-one-line-brackets  OR  -J
    Add one line brackets to unbracketed one line conditional
    statements.

    --remove-brackets  OR  -xj
    Remove brackets from a bracketed one line conditional statements.

    --keep-one-line-blocks  OR  -O
    Don't break blocks residing completely on one line.

    --keep-one-line-statements  OR  -o
    Don't break lines containing multiple statements into
    multiple single-statement lines.

    --convert-tabs  OR  -c
    Convert tabs to the appropriate number of spaces.

    --close-templates  OR  -xy
    Close ending angle brackets on template definitions.

    --remove-comment-prefix  OR  -xp
    Remove the leading '*' prefix on multi-line comments and
    indent the comment text one indent.

    --max-code-length=#    OR  -xC#
    --break-after-logical  OR  -xL
    max-code-length=# will break the line if it exceeds more than
    # characters. The valid values are 50 thru 200.
    If the line contains logical conditionals they will be placed
    first on the new line. The option break-after-logical will
    cause the logical conditional to be placed last on the
    previous line.

    --mode=c
    Indent a C or C++ source file (this is the default).

    --mode=java
    Indent a Java source file.

    --mode=cs
    Indent a C# source file.

Objective-C Options:
--------------------
    --align-method-colon  OR  -xM
    Align the colons in an Objective-C method definition.

    --pad-method-prefix  OR  -xQ
    Insert space padding after the '-' or '+' Objective-C
    method prefix.

    --unpad-method-prefix  OR  -xR
    Remove all space padding after the '-' or '+' Objective-C
    method prefix.

    --pad-method-colon=none    OR  -xP
    --pad-method-colon=all     OR  -xP1
    --pad-method-colon=after   OR  -xP2
    --pad-method-colon=before  OR  -xP3
    Add or remove space padding before or after the colons in an
    Objective-C method call.

Other Options:
--------------
    --suffix=####
    Append the suffix #### instead of '.orig' to original filename.

    --suffix=none  OR  -n
    Do not retain a backup of the original file.

    --recursive  OR  -r  OR  -R
    Process subdirectories recursively.

    --exclude=####
    Specify a file or directory #### to be excluded from processing.

    --ignore-exclude-errors  OR  -i
    Allow processing to continue if there are errors in the exclude=###
    options. It will display the unmatched excludes.

    --ignore-exclude-errors-x  OR  -xi
    Allow processing to continue if there are errors in the exclude=###
    options. It will NOT display the unmatched excludes.

    --errors-to-stdout  OR  -X
    Print errors and help information to standard-output rather than
    to standard-error.

    --preserve-date  OR  -Z
    Preserve the original file's date and time modified. The time
     modified will be changed a few micro seconds to force a compile.

    --verbose  OR  -v
    Verbose mode. Extra informational messages will be displayed.

    --formatted  OR  -Q
    Formatted display mode. Display only the files that have been
    formatted.

    --quiet  OR  -q
    Quiet mode. Suppress all output except error messages.

    --lineend=windows  OR  -z1
    --lineend=linux    OR  -z2
    --lineend=macold   OR  -z3
    Force use of the specified line end style. Valid options
    are windows (CRLF), linux (LF), and macold (CR).

Command Line Only:
------------------
    --options=####
    Specify an options file #### to read and use.

    --options=none
    Disable the default options file.
    Only the command-line parameters will be used.

    --ascii  OR  -I
    The displayed output will be ascii characters only.

    --version  OR  -V
    Print version number.

    --help  OR  -h  OR  -?
    Print this help message.

