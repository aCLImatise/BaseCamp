class: CommandLineTool
id: mknod.cwl
inputs:
- id: in_mode
  doc: set file permission bits to MODE, not a=rw - umask
  type: File?
  inputBinding:
    prefix: --mode
- id: in_set_security_context
  doc: set the SELinux security context to default type
  type: boolean?
  inputBinding:
    prefix: -Z
- id: in_context
  doc: "[=CTX]  like -Z, or if CTX is specified then set the SELinux\nor SMACK security\
    \ context to CTX"
  type: boolean?
  inputBinding:
    prefix: --context
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mknod
