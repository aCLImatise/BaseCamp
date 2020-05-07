class: CommandLineTool
id: mknod.cwl
inputs:
- id: mode
  doc: set file permission bits to MODE, not a=rw - umask
  type: string
  inputBinding:
    prefix: --mode
- id: z
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
outputs: []
cwlVersion: v1.1
baseCommand:
- mknod
