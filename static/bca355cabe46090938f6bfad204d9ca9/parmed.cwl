class: CommandLineTool
id: parmed.cwl
inputs:
- id: in_input
  doc: "Script with ParmEd commands to execute. Default reads\nfrom stdin. Can be\
    \ specified multiple times to process\nmultiple input files."
  type: File?
  inputBinding:
    prefix: --input
- id: in_parm
  doc: "List of topology files to load into ParmEd. Can be\nspecified multiple times\
    \ to process multiple\ntopologies."
  type: string?
  inputBinding:
    prefix: --parm
- id: in_in_pc_rd
  doc: "List of inpcrd files to load into ParmEd. They are\npaired with the topology\
    \ files in the same order that\neach set of files is specified on the command-line."
  type: string?
  inputBinding:
    prefix: --inpcrd
- id: in_overwrite
  doc: Allow ParmEd to overwrite existing files.
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_log_file
  doc: "Log file with every command executed during an\ninteractive ParmEd session.\
    \ Default is parmed.log"
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_prompt
  doc: String to use as a command prompt.
  type: string?
  inputBinding:
    prefix: --prompt
- id: in_no_splash
  doc: Prevent printing the greeting logo.
  type: boolean?
  inputBinding:
    prefix: --no-splash
- id: in_enable_interpreter
  doc: "Allow arbitrary single Python commands or blocks of\nPython code to be run.\
    \ By default Python commands will\nnot be run as a safeguard for your system.\
    \ Make sure\nyou trust the source of the ParmEd command before\nturning this option\
    \ on."
  type: boolean?
  inputBinding:
    prefix: --enable-interpreter
- id: in_strict
  doc: "Prevent scripts from running past unrecognized input\nand actions that end\
    \ with an error. In interactive\nmode, actions with unrecognized inputs and failed\n\
    actions prevent any changes from being made to the\ntopology, but does not quit\
    \ the interpreter. This is\nthe default behavior."
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_relaxed
  doc: "Scripts ignore unrecognized input and simply skip over\nfailed actions, executing\
    \ the rest of the script.\nUnrecognized input in the interactive interpreter\n\
    emits a non-fatal warning.\n"
  type: boolean?
  inputBinding:
    prefix: --relaxed
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- parmed
