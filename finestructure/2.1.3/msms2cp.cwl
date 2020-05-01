#!/usr/bin/env cwl-runner

baseCommand:
- msms2cp.pl
class: CommandLineTool
cwlVersion: v1.0
id: msms2cp.pl
inputs:
- doc: ''
  id: perl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: msms2cppl
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: msms_output_txt
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: output_filename_prefix
  inputBinding:
    position: 3
  type: string
