#!/usr/bin/env cwl-runner

baseCommand:
- pm-prepare
class: CommandLineTool
cwlVersion: v1.0
id: pm-prepare
inputs:
- doc: set file mode (as in chmod), not a=rwx - umask
  id: mode
  inputBinding:
    prefix: --mode
  type: string
- doc: no error if existing, make parent directories as needed
  id: parents
  inputBinding:
    prefix: --parents
  type: boolean
- doc: print a message for each created directory
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: set SELinux security context of each created directory to the default type
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
