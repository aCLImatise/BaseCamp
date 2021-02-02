class: CommandLineTool
id: agat_sp_webApollo_compliant.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File
  inputBinding:
    prefix: --gff
- id: in_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File
  inputBinding:
    prefix: --output
- id: in_agat_sp_web_apollo_compliant_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- agat_sp_webApollo_compliant.pl
