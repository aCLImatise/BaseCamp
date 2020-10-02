class: CommandLineTool
id: agat_sp_keep_longest_isoform.pl.cwl
inputs:
- id: in_gff
  doc: GTF/GFF file.
  type: File
  inputBinding:
    prefix: --gff
- id: in_output
  doc: "File where will be written the result. If no output file is\nspecified, the\
    \ output will be written to STDOUT."
  type: File
  inputBinding:
    prefix: --output
- id: in_agat_sp_keep_longest_isoform_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "File where will be written the result. If no output file is\nspecified, the\
    \ output will be written to STDOUT."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- agat_sp_keep_longest_isoform.pl
