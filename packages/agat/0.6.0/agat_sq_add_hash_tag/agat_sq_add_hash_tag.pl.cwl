class: CommandLineTool
id: agat_sq_add_hash_tag.pl.cwl
inputs:
- id: in_input
  doc: 'STRING: Input GTF/GFF file.'
  type: File?
  inputBinding:
    prefix: --input
- id: in_interval
  doc: "Integer: 1 or 2. 1 will add ### after each new sequence (column1\nof the gff),\
    \ while 2 will add the ### after each group of\nfeature (gene). By default the\
    \ value is 1."
  type: long?
  inputBinding:
    prefix: --interval
- id: in_output
  doc: "STRING: Output file. If no output file is specified, the output\nwill be written\
    \ to STDOUT. The result is in tabulate format."
  type: File?
  inputBinding:
    prefix: --output
- id: in_agat_sq_add_hash_tag_do_tpl
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
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sq_add_hash_tag.pl
