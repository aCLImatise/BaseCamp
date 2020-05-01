#!/usr/bin/env cwl-runner

baseCommand:
- beagle2chromopainter.pl
class: CommandLineTool
cwlVersion: v1.0
id: beagle2chromopainter.pl
inputs:
- doc: ''
  id: perl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: beagle_2chromopainterpl
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: beagle_phased_output_file
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: output_filename_prefix
  inputBinding:
    position: 3
  type: string
