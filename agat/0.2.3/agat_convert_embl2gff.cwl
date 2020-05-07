class: CommandLineTool
id: agat_convert_embl2gff.pl.cwl
inputs:
- id: gaas_converter_embl2gffpl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: embl
  doc: Input EMBL file that will be read
  type: boolean
  inputBinding:
    prefix: --embl
- id: primary_tag
  doc: List of "primary tag". Useful to discard or keep specific features. Multiple
    tags must be coma-separated.
  type: boolean
  inputBinding:
    prefix: -primary_tag
- id: d
  doc: Means that primary tags provided by the option "prinary_tag" will be discarded.
  type: boolean
  inputBinding:
    prefix: -d
- id: d
  doc: Means that only primary tags provided by the option "prinary_tag" will be kept.
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: ', --output , --out , --outfile or --gff Output GFF file. If no output file
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
- agat_convert_embl2gff.pl
