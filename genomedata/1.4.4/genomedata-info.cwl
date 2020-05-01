#!/usr/bin/env cwl-runner

baseCommand:
- genomedata-info
class: CommandLineTool
cwlVersion: v1.0
id: genomedata-info
inputs:
- doc: genomedata archive
  id: gd_archive
  inputBinding:
    position: 0
  type: string
