class: CommandLineTool
id: ../../../gaas_gb2embl.pl.cwl
inputs:
- id: gb
  doc: Input genebank file that will be read
  type: boolean
  inputBinding:
    prefix: --gb
- id: _output_
  doc: ', --output , --out , --outfile or --embl Output embl file. If no output file
    is specified, the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_gb2embl.pl
