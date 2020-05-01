#!/usr/bin/env cwl-runner

baseCommand:
- phasesubsample.pl
class: CommandLineTool
cwlVersion: v1.0
id: phasesubsample.pl
inputs:
- doc: ''
  id: perl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: phase_subsample_pl
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: from
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: to
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: phase_file
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: output_phase_file
  inputBinding:
    position: 5
  type: string
