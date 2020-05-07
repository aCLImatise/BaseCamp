class: CommandLineTool
id: phasesubsample.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: phase_subsample_pl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: phase_file
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: output_phase_file
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- phasesubsample.pl
