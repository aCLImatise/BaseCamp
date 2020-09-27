class: CommandLineTool
id: mkdir.cwl
inputs:
- id: in_mode
  doc: set file mode (as in chmod), not a=rwx - umask
  type: File
  inputBinding:
    prefix: --mode
- id: in_parents
  doc: no error if existing, make parent directories as needed
  type: boolean
  inputBinding:
    prefix: --parents
- id: in_verbose
  doc: print a message for each created directory
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_set_selinux_context
  doc: "set SELinux security context of each created directory\nto the default type"
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_context
  doc: "[=CTX]  like -Z, or if CTX is specified then set the SELinux\nor SMACK security\
    \ context to CTX"
  type: boolean
  inputBinding:
    prefix: --context
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mkdir
