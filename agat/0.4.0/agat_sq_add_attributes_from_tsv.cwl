class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sq_add_attributes_from_tsv.pl.cwl
inputs:
- id: gff
  doc: 'STRING: Input GTF/GFF file.'
  type: boolean
  inputBinding:
    prefix: --gff
- id: tsv
  doc: 'STRING: Input tsv file'
  type: boolean
  inputBinding:
    prefix: --tsv
- id: csv
  doc: 'BOLEAN: Inform the script that the tsv input file is actually a csv (coma-separated).'
  type: boolean
  inputBinding:
    prefix: --csv
- id: verbose
  doc: 'BOLEAN: Add verbosity'
  type: string
  inputBinding:
    prefix: --verbose
- id: output
  doc: 'STRING: Output file. If no output file is specified, the output will be written
    to STDOUT. The result is in tabulate format.'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sq_add_attributes_from_tsv.pl
