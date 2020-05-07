class: CommandLineTool
id: agat_convert_mfannot2gff.pl.cwl
inputs:
- id: gaas_convert_mfannot2gffpl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: m_fan_not
  doc: The mfannot input file
  type: string
  inputBinding:
    prefix: --mfannot
- id: gff
  doc: the gff output file
  type: string
  inputBinding:
    prefix: --gff
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
- agat_convert_mfannot2gff.pl
