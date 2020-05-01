#!/usr/bin/env cwl-runner

baseCommand:
- MatchDump
class: CommandLineTool
cwlVersion: v1.0
id: matchdump
inputs:
- doc: ''
  id: k_match_output_file
  inputBinding:
    position: 0
  type: string
