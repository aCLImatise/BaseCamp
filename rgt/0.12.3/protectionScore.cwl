class: CommandLineTool
id: protectionScore.py_OUTPUT_FILE.cwl
inputs:
- id: footprint_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: m_pbs_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dnase_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: genome_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- protectionScore.py
- OUTPUT_FILE
