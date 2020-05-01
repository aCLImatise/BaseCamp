#!/usr/bin/env cwl-runner

baseCommand:
- SelectCellsByNumTranscripts
class: CommandLineTool
cwlVersion: v1.0
id: selectcellsbynumtranscripts
inputs:
- doc: (default 4g)
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: final command line before executing
  id: v
  inputBinding:
    prefix: -v
  type: string
