class: CommandLineTool
id: ../../../agat_convert_sp_gff2gtf.pl.cwl
inputs:
- id: _output_
  doc: ', --output , --out , --outfile or --gtf Output GTF file. If no output file
    is specified, the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
- id: gff
  doc: ''
  type: string
  inputBinding:
    prefix: --gff
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_convert_sp_gff2gtf.pl
