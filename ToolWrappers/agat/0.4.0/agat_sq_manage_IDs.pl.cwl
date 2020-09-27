class: CommandLineTool
id: agat_sq_manage_IDs.pl.cwl
inputs:
- id: in_input
  doc: 'STRING: Input GTF/GFF file.'
  type: File
  inputBinding:
    prefix: --input
- id: in_of
  doc: "Output format, if no ouput format is given, the same as the\ninput one detected\
    \ will be used. Otherwise you can force to have\na gff version 1 or 2 or 3 by\
    \ giving the corresponding number."
  type: boolean
  inputBinding:
    prefix: --of
- id: in_output
  doc: "STRING: Output file. If no output file is specified, the output\nwill be written\
    \ to STDOUT. The result is in tabulate format."
  type: File
  inputBinding:
    prefix: --output
- id: in_agat_sq_manage_id_do_tpl
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
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- agat_sq_manage_IDs.pl
