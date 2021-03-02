class: CommandLineTool
id: o_get_reads_from_fasta_ids_file.cwl
inputs:
- id: in_s
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_o_get_reads_from_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ids_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- o-get-reads-from-fasta
- ids_file
