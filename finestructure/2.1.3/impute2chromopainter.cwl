#!/usr/bin/env cwl-runner

baseCommand:
- impute2chromopainter.pl
class: CommandLineTool
cwlVersion: v1.0
id: impute2chromopainter.pl
inputs:
- doc: ''
  id: perl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: impute2chromopainterpl
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: impute_output_file_haps
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: output_filename_prefix
  inputBinding:
    position: 3
  type: string
