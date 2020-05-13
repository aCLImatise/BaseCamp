class: CommandLineTool
id: bed_complement.py_chrom_length_file.cwl
inputs:
- id: bed_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_length_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bed_complement.py
- chrom_length_file
