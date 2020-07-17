class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_manage_introns.pl.cwl
inputs:
- id: plot
  doc: Allows to create an histogram in pdf of intron sizes distribution.
  type: boolean
  inputBinding:
    prefix: --plot
- id: output
  doc: Output gff3 file where the gene incriminated will be write.
  type: string
  inputBinding:
    prefix: --output
- id: gff
  doc: ''
  type: string
  inputBinding:
    prefix: --gff
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_manage_introns.pl
