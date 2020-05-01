#!/usr/bin/env cwl-runner

baseCommand:
- mknod
class: CommandLineTool
cwlVersion: v1.0
id: mknod
inputs:
- doc: set file permission bits to MODE, not a=rw - umask
  id: mode
  inputBinding:
    prefix: --mode
  type: string
- doc: set the SELinux security context to default type
  id: z
  inputBinding:
    prefix: -Z
  type: boolean
- doc: '[=CTX]  like -Z, or if CTX is specified then set the SELinux or SMACK security
    context to CTX'
  id: context
  inputBinding:
    prefix: --context
  type: boolean
