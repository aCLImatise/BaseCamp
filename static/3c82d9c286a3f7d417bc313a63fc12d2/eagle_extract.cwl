class: CommandLineTool
id: eagle_extract.cwl
inputs:
- id: sample_rate
  doc: ''
  type: string
  inputBinding:
    prefix: --samplerate
- id: w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- eagle
- extract
