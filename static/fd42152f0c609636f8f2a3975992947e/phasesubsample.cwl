class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/phasesubsample.pl.cwl
inputs:
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: to
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
- phasesubsample.pl
