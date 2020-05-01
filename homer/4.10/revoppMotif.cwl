#!/usr/bin/env cwl-runner

baseCommand:
- revoppMotif.pl
class: CommandLineTool
cwlVersion: v1.0
id: revoppmotif.pl
inputs:
- doc: ''
  id: motif_file
  inputBinding:
    position: 0
  type: string
