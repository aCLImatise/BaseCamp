#!/usr/bin/env cwl-runner

baseCommand:
- MatchesByFeature
class: CommandLineTool
cwlVersion: v1.0
id: matchesbyfeature
inputs:
- doc: ''
  id: gff3_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: gff_features
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: match_files
  inputBinding:
    position: 2
  type: string
