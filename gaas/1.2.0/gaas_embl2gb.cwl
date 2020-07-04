class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gaas_embl2gb.pl.cwl
inputs:
- id: embl
  doc: Input EMBL file that will be read
  type: boolean
  inputBinding:
    prefix: -embl
- id: _output_
  doc: ', --output , --out , --outfile or --gb Output Genbank file. If no output file
    is specified, the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_embl2gb.pl
