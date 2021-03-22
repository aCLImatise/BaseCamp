class: CommandLineTool
id: bind.pl.cwl
inputs:
- id: in_def
  doc: ": Unbound variables in the template will be filled in by the values in\nthe\
    \ default file DEFAULT_FILE."
  type: File?
  inputBinding:
    prefix: -def
- id: in_depth
  doc: ": Set the maximum recursion depth to DEPTH (default is infinite).  Setting\
    \ to -1\ntells the script to perform infinite-depth recursion.\n** -detect not\
    \ implemented yet **"
  type: long?
  inputBinding:
    prefix: -depth
- id: in_detect
  doc: ': Tell the script to "detect" variables in the template file.'
  type: boolean?
  inputBinding:
    prefix: -detect
- id: in_exe
  doc: ": Execute the command COMMAND on the resulting bound file.  When this\noption\
    \ is used a temporary file is created and the file is passed\ninto the COMMAND\
    \ as one of its arguments.  The default prints the\nresulting bound file to standard\
    \ output.  Multiple -exe options can\nbe supplied.  The commands are executed\
    \ in the order given."
  type: File?
  inputBinding:
    prefix: -exe
- id: in_fill
  doc: ': If any variables are unbound in the final document then set them all to
    FILLER.'
  type: string?
  inputBinding:
    prefix: -fill
- id: in_no_def
  doc: ": Tell the script to ignore variable assignments in any default file.\nUse\
    \ this option when a default file for the template exists and you do not wish\
    \ to\nfill in the default values."
  type: boolean?
  inputBinding:
    prefix: -nodef
- id: in_no_env
  doc: ': Ignore environment variables (default uses them).'
  type: boolean?
  inputBinding:
    prefix: -noenv
- id: in_no_exe
  doc: ': Removes any previous -exe and -pipe option(s).'
  type: boolean?
  inputBinding:
    prefix: -noexe
- id: in_nr
  doc: ": Non-recursive (default is recursive).  Do not expand values of attributes\
    \ that are also\nattribute names."
  type: boolean?
  inputBinding:
    prefix: -nr
- id: in_pipe
  doc: ": Same as the -exe option only the resulting file with bound variables is\n\
    passed to the commands standard input."
  type: File?
  inputBinding:
    prefix: -pipe
- id: in_print
  doc: ": Print the resulting template to standard output even if -exe or -pipe was\n\
    supplied."
  type: boolean?
  inputBinding:
    prefix: -print
- id: in_quiet_mode_suppress
  doc: ': Quiet mode (suppress warnings and information).'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_use_casesensitive_matching
  doc: ': Use case-sensitive matching on variable names (default is case-insensitive).'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_recursively_apply_default
  doc: ": Recursively apply bindings (default).  I.e. if variable names are the result\
    \ of one\napplication of the values then it will be replaced by the value assigned\
    \ to a variable\nof that name in the next round of substitution.  For example\
    \ if the variable $($(FOO))\nexists in the template file and FOO=BAR and BAR=10\
    \ then the result of recursive binding\nwill replace $($(FOO)) with 10 while non-recursive\
    \ would yield $(BAR)."
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_xml
  doc: ': Tell the script the document is XML so can print more pretty output.'
  type: boolean?
  inputBinding:
    prefix: -xml
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_exe
  doc: ": Execute the command COMMAND on the resulting bound file.  When this\noption\
    \ is used a temporary file is created and the file is passed\ninto the COMMAND\
    \ as one of its arguments.  The default prints the\nresulting bound file to standard\
    \ output.  Multiple -exe options can\nbe supplied.  The commands are executed\
    \ in the order given."
  type: File?
  outputBinding:
    glob: $(inputs.in_exe)
hints: []
cwlVersion: v1.1
baseCommand:
- bind.pl
