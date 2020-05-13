class: CommandLineTool
id: seq_seq_pan_genomedescription.cwl
inputs:
- id: genome_description_py
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: File with list of /paths/to/files.fasta
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: name of output file
  type: string
  inputBinding:
    prefix: --output
- id: add
  doc: Add new genome description to this file.
  type: string
  inputBinding:
    prefix: --add
outputs: []
cwlVersion: v1.1
baseCommand:
- seq-seq-pan-genomedescription
