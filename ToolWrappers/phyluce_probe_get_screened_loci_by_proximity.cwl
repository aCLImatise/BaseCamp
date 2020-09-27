class: CommandLineTool
id: phyluce_probe_get_screened_loci_by_proximity.cwl
inputs:
- id: in_output
  doc: "[--distance DISTANCE]\n[--length LENGTH]"
  type: long
  inputBinding:
    prefix: --output
- id: in_input
  doc: The FASTA file of input sequences
  type: File
  inputBinding:
    prefix: --input
- id: in_distance
  doc: The minimum distance on which to filter
  type: string
  inputBinding:
    prefix: --distance
- id: in_length
  doc: The minimum length of sequences to filter
  type: long
  inputBinding:
    prefix: --length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_screened_loci_by_proximity
