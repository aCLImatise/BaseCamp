class: CommandLineTool
id: ../../../gapToLift.cwl
inputs:
- id: chr
  doc: '- work only on given chrom'
  type: string
  inputBinding:
    prefix: -chr
- id: min_gap
  doc: '- examine gaps only >= than M'
  type: string
  inputBinding:
    prefix: -minGap
- id: insane
  doc: '- do *not* perform coordinate sanity checks on gaps'
  type: boolean
  inputBinding:
    prefix: -insane
- id: bed_file
  doc: '- output segments to fileName.bed'
  type: File
  inputBinding:
    prefix: -bedFile
- id: allow_bridged
  doc: '- consider any type of gap not just the non-bridged gaps'
  type: boolean
  inputBinding:
    prefix: -allowBridged
- id: verbose
  doc: '- N > 1 see more information about procedure'
  type: string
  inputBinding:
    prefix: -verbose
- id: db
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: lift_file_dot_lft
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gapToLift
