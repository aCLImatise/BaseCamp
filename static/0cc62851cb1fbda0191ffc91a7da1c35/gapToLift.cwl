class: CommandLineTool
id: gapToLift.cwl
inputs:
- id: work
  doc: on given chrom
  type: string
  inputBinding:
    prefix: '- work'
- id: examine
  doc: only >= than M
  type: string
  inputBinding:
    prefix: '- examine'
- id: insane
  doc: '*not* perform coordinate sanity checks on gaps'
  type: boolean
  inputBinding:
    prefix: -insane
- id: bed_file
  doc: to fileName.bed
  type: File
  inputBinding:
    prefix: -bedFile
- id: allow_bridged
  doc: type of gap not just the non-bridged gaps
  type: string
  inputBinding:
    prefix: -allowBridged
- id: verbose
  doc: '> 1 see more information about procedure'
  type: string
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- gapToLift
