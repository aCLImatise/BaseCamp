class: CommandLineTool
id: protectionScore.py.cwl
inputs:
- id: in_footprint_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_m_pbs_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dnase_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_genome_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- protectionScore.py
