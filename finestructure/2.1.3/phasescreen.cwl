#!/usr/bin/env cwl-runner

baseCommand:
- phasescreen.pl
class: CommandLineTool
cwlVersion: v1.0
id: phasescreen.pl
inputs:
- doc: ''
  id: perl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: phases_screen_pl
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: phase_file
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: output_phase_file
  inputBinding:
    position: 3
  type: string
