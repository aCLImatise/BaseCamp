class: CommandLineTool
id: agat_sq_split.pl.cwl
inputs:
- id: in_input
  doc: 'STRING: Input GTF/GFF file.'
  type: File?
  inputBinding:
    prefix: --input
- id: in_interval
  doc: Number of group of feature to include in each
  type: long?
  inputBinding:
    prefix: --interval
- id: in_feature_type
  doc: top feature of the feature group. By default
  type: string?
  inputBinding:
    prefix: --feature_type
- id: in_output
  doc: "STRING: Output file. If no output file is specified, the output\nwill be written\
    \ to STDOUT. The result is in tabulate format."
  type: File?
  inputBinding:
    prefix: --output
- id: in_agat_sq_split_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "STRING: Output file. If no output file is specified, the output\nwill be written\
    \ to STDOUT. The result is in tabulate format."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.5.1--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sq_split.pl
