class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_add_introns.pl.cwl
inputs:
- id: ref_file
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: -reffile
- id: output
  doc: Output gff3 file where the gene incriminated will be write.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_add_introns.pl
