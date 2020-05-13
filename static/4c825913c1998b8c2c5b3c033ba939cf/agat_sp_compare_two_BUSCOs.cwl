class: CommandLineTool
id: agat_sp_compare_two_BUSCOs.pl.cwl
inputs:
- id: f1
  doc: 'STRING: Input busco folder1'
  type: boolean
  inputBinding:
    prefix: --f1
- id: f2
  doc: 'STRING: Input busco folder2'
  type: boolean
  inputBinding:
    prefix: --f2
- id: verbose
  doc: 'Integer: For displaying extra information use -v 1. For activating the verbosity
    in the omniscient parser use -v 66. (not recommended)'
  type: string
  inputBinding:
    prefix: --verbose
- id: output
  doc: 'STRING: Output folder.'
  type: string
  inputBinding:
    prefix: --output
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
- agat_sp_compare_two_BUSCOs.pl
