class: CommandLineTool
id: ../../../mafSplitPos.cwl
inputs:
- id: chrom
  doc: Restrict to one chromosome
  type: string
  inputBinding:
    prefix: -chrom
- id: min_gap
  doc: Split only on gaps >N bp, defaults to 100, specify -1 to disable
  type: string
  inputBinding:
    prefix: -minGap
- id: min_repeat
  doc: Split only on repeats >N bp, defaults to 100, specify -1 to disable
  type: string
  inputBinding:
    prefix: -minRepeat
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: size
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mafSplitPos
