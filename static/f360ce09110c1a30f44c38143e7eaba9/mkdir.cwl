class: CommandLineTool
id: mkdir.cwl
inputs:
- id: mode
  doc: set file mode (as in chmod), not a=rwx - umask
  type: string
  inputBinding:
    prefix: --mode
- id: parents
  doc: no error if existing, make parent directories as needed
  type: boolean
  inputBinding:
    prefix: --parents
- id: verbose
  doc: print a message for each created directory
  type: boolean
  inputBinding:
    prefix: --verbose
- id: z
  doc: set SELinux security context of each created directory to the default type
  type: boolean
  inputBinding:
    prefix: -Z
- id: context
  doc: '[=CTX]  like -Z, or if CTX is specified then set the SELinux or SMACK security
    context to CTX'
  type: boolean
  inputBinding:
    prefix: --context
outputs: []
cwlVersion: v1.1
baseCommand:
- mkdir
