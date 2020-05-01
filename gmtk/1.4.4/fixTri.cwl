#!/usr/bin/env cwl-runner

baseCommand:
- fixTri.sh
class: CommandLineTool
cwlVersion: v1.0
id: fixtri.sh
inputs:
- doc: ''
  id: tri_file
  inputBinding:
    position: 0
  type: string
