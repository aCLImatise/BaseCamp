#!/usr/bin/env cwl-runner

baseCommand:
- locarnap-predict-and-plot.pl
class: CommandLineTool
cwlVersion: v1.0
id: locarnap-predict-and-plot.pl
inputs:
- doc: ''
  id: annotation_file
  inputBinding:
    position: 0
  type: string
