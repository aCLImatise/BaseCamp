class: CommandLineTool
id: phasescreen.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: phases_screen_pl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: phase_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_phase_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- phasescreen.pl
