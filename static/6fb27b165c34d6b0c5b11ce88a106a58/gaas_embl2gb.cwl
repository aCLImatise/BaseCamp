class: CommandLineTool
id: gaas_embl2gb.pl.cwl
inputs:
- id: embl
  doc: Input EMBL file that will be read
  type: boolean
  inputBinding:
    prefix: -embl
- id: o
  doc: ', --output , --out , --outfile or --gb Output Genbank file. If no output file
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
- gaas_embl2gb.pl
