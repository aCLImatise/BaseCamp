#!/usr/bin/env cwl-runner

baseCommand:
- chromopainter2chromopainterv2.pl
class: CommandLineTool
cwlVersion: v1.0
id: chromopainter2chromopainterv2.pl
inputs:
- doc: ''
  id: perl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: chromo_painter_2chromopainterv2pl
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
