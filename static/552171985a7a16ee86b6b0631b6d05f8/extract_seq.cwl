class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extract_seq.cwl
inputs:
- id: name_write_sequence
  doc: Name of output file to write sequence to
  type: string
  inputBinding:
    prefix: -o
- id: sequence_name_extract
  doc: Sequence name to extract
  type: string
  inputBinding:
    prefix: -s
- id: do_remove_gaps
  doc: Do not remove gaps
  type: boolean
  inputBinding:
    prefix: -g
- id: msa_file
  doc: file containing MSA
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_seq
