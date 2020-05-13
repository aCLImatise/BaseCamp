class: CommandLineTool
id: gaas_gb2embl.pl.cwl
inputs:
- id: gb
  doc: Input genebank file that will be read
  type: boolean
  inputBinding:
    prefix: --gb
- id: o
  doc: ', --output , --out , --outfile or --embl Output embl file. If no output file
    is specified, the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_gb2embl.pl
