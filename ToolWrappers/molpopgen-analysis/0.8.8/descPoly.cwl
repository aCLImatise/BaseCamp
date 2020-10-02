class: CommandLineTool
id: descPoly.cwl
inputs:
- id: in_infile_sequence_data
  doc: infile (for sequence data in FASTA format)
  type: boolean
  inputBinding:
    prefix: -i
- id: in_specify_sequence_count
  doc: '[integer]    specify the sequence (i.e. count from one) of the outgroup, if
    present in data'
  type: boolean
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- descPoly
