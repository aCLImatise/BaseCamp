class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_fix_overlaping_genes.pl.cwl
inputs:
- id: file
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --file
- id: outfile
  doc: Output file. If none given, will be display in standard output.
  type: string
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_fix_overlaping_genes.pl
