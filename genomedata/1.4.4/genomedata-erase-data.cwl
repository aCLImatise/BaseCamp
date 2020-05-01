#!/usr/bin/env cwl-runner

baseCommand:
- genomedata-erase-data
class: CommandLineTool
cwlVersion: v1.0
id: genomedata-erase-data
inputs:
- doc: genomedata archive
  id: gd_archive
  inputBinding:
    position: 0
  type: string
- doc: tracknames to erase
  id: track_name
  inputBinding:
    prefix: --trackname
  type:
    items: string
    type: array
- doc: Print status updates and diagnostic messages
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
