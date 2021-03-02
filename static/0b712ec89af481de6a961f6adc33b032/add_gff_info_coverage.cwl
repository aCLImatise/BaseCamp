class: CommandLineTool
id: add_gff_info_coverage.cwl
inputs:
- id: in_sample_alignment
  doc: "sample name and correspondent alignment file\nseparated by comma  [required]"
  type: File?
  inputBinding:
    prefix: --sample-alignment
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- coverage
