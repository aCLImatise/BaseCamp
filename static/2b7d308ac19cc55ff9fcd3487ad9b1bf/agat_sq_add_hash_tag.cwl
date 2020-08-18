class: CommandLineTool
id: ../../../agat_sq_add_hash_tag.pl.cwl
inputs:
- id: input
  doc: 'STRING: Input GTF/GFF file.'
  type: string
  inputBinding:
    prefix: --input
- id: interval
  doc: 'Integer: 1 or 2. 1 will add ### after each new sequence (column1 of the gff),
    while 2 will add the ### after each group of feature (gene). By default the value
    is 1.'
  type: string
  inputBinding:
    prefix: --interval
- id: output
  doc: 'STRING: Output file. If no output file is specified, the output will be written
    to STDOUT. The result is in tabulate format.'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sq_add_hash_tag.pl
