#!/usr/bin/env cwl-runner

baseCommand:
- locarnap-realign-all.pl
class: CommandLineTool
cwlVersion: v1.0
id: locarnap-realign-all.pl
inputs:
- doc: ''
  id: lo_carnap_realign_all
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: annotation_file
  inputBinding:
    position: 1
  type: string
