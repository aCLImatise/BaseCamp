class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_Prokka_inferNameFromAttributes.pl.cwl
inputs:
- id: _output_
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
- id: gff
  doc: ''
  type: File
  inputBinding:
    prefix: -gff
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_Prokka_inferNameFromAttributes.pl
