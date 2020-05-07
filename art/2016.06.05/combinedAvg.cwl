class: CommandLineTool
id: combinedAvg.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: combined_avg_pl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: freq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- combinedAvg.pl
