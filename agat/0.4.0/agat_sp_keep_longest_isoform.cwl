class: CommandLineTool
id: ../../../agat_sp_keep_longest_isoform.pl.cwl
inputs:
- id: gff
  doc: GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: output
  doc: File where will be written the result. If no output file is specified, the
    output will be written to STDOUT.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_keep_longest_isoform.pl
