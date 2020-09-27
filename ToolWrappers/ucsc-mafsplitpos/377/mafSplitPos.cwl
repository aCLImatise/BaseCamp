class: CommandLineTool
id: mafSplitPos.cwl
inputs:
- id: in_chrom
  doc: Restrict to one chromosome
  type: string
  inputBinding:
    prefix: -chrom
- id: in_min_gap
  doc: Split only on gaps >N bp, defaults to 100, specify -1 to disable
  type: long
  inputBinding:
    prefix: -minGap
- id: in_min_repeat
  doc: Split only on repeats >N bp, defaults to 100, specify -1 to disable
  type: long
  inputBinding:
    prefix: -minRepeat
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_size
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mafSplitPos
