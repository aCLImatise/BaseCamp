#!/usr/bin/env cwl-runner

baseCommand:
- dot2pp
class: CommandLineTool
cwlVersion: v1.0
id: dot2pp
inputs:
- doc: ''
  id: in_filed_p_ps
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: outfile_pp
  inputBinding:
    position: 1
  type: string
- doc: documentation
  id: man
  inputBinding:
    prefix: --man
  type: string
- doc: Sequence name
  id: name
  inputBinding:
    prefix: --name
  type: string
