class: CommandLineTool
id: merge_contigs.cwl
inputs:
- id: in_output_outprefixmali_file
  doc: Output the <out-prefix>.mali file
  type: File
  inputBinding:
    prefix: -a
- id: in_coords_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_cco_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_bank_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_outprefixmali_file
  doc: Output the <out-prefix>.mali file
  type: File
  outputBinding:
    glob: $(inputs.in_output_outprefixmali_file)
cwlVersion: v1.1
baseCommand:
- merge-contigs
