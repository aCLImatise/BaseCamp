class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mkfifo.cwl
inputs:
- id: mode
  doc: set file permission bits to MODE, not a=rw - umask
  type: string
  inputBinding:
    prefix: --mode
- id: set_selinux_context
  doc: set the SELinux security context to default type
  type: boolean
  inputBinding:
    prefix: -Z
- id: context
  doc: '[=CTX]  like -Z, or if CTX is specified then set the SELinux or SMACK security
    context to CTX'
  type: boolean
  inputBinding:
    prefix: --context
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mkfifo
