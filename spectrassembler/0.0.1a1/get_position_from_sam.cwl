class: CommandLineTool
id: get_position_from_sam.py_samfile.cwl
inputs:
- id: sam_file
  doc: path .sam file from BWA-bwasw
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: path to reads in fasta format
  type: string
  inputBinding:
    position: 1
- id: root
  doc: directory where to store position file.
  type: string
  inputBinding:
    prefix: --root
outputs: []
cwlVersion: v1.1
baseCommand:
- get_position_from_sam.py
- samfile
