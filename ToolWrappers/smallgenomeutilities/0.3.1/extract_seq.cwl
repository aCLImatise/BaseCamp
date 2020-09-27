class: CommandLineTool
id: extract_seq.cwl
inputs:
- id: in_name_write_sequence
  doc: Name of output file to write sequence to
  type: File
  inputBinding:
    prefix: -o
- id: in_sequence_name_extract
  doc: Sequence name to extract
  type: string
  inputBinding:
    prefix: -s
- id: in_do_remove_gaps
  doc: Do not remove gaps
  type: boolean
  inputBinding:
    prefix: -g
- id: in_msa_file
  doc: file containing MSA
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_write_sequence
  doc: Name of output file to write sequence to
  type: File
  outputBinding:
    glob: $(inputs.in_name_write_sequence)
cwlVersion: v1.1
baseCommand:
- extract_seq
