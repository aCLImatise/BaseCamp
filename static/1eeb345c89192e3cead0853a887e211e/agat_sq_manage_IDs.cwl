class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sq_manage_IDs.pl.cwl
inputs:
- id: input
  doc: 'STRING: Input GTF/GFF file.'
  type: string
  inputBinding:
    prefix: --input
- id: of
  doc: Output format, if no ouput format is given, the same as the input one detected
    will be used. Otherwise you can force to have a gff version 1 or 2 or 3 by giving
    the corresponding number.
  type: boolean
  inputBinding:
    prefix: --of
- id: output
  doc: 'STRING: Output file. If no output file is specified, the output will be written
    to STDOUT. The result is in tabulate format.'
  type: string
  inputBinding:
    prefix: --output
- id: agat_sq_manage_id_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sq_manage_IDs.pl
