#!/usr/bin/env cwl-runner

baseCommand:
- correct
class: CommandLineTool
cwlVersion: v1.0
id: correct
inputs:
- doc: Output errors reads even if they can't be corrected, maintaining paired end
    reads.
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: Output only the original read headers without correction messages
  id: headers
  inputBinding:
    prefix: --headers
  type: boolean
- doc: Output a log of all corrections into *.log as 'quality position new_nt old_nt'
  id: log
  inputBinding:
    prefix: --log
  type: boolean
