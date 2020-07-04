class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_filter_by_mrnaBlastValue.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: boolean
  inputBinding:
    prefix: --gff
- id: blast
  doc: list of the all-vs-all blast file (outfmt 6, blastp)
  type: string
  inputBinding:
    prefix: --blast
- id: outfile
  doc: The name of the output file. By default the output is the standard output.
  type: boolean
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_filter_by_mrnaBlastValue.pl
