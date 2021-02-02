class: CommandLineTool
id: bam2gtf.py.cwl
inputs:
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_convert
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_gtf
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam2gtf.py
