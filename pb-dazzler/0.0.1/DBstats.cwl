class: CommandLineTool
id: DBstats.cwl
inputs:
- id: db_stats
  doc: '[-nu] [-b<int(1000)>] [-m<mask>]+ <name:db|dam>'
  type: string
  inputBinding:
    position: 0
- id: u
  doc: ': Give stats for the untrimmed database.'
  type: boolean
  inputBinding:
    prefix: -u
- id: n
  doc: ': Do not show histogram of read lengths.'
  type: boolean
  inputBinding:
    prefix: -n
- id: m
  doc: ': Show histogram of mask intervals.'
  type: boolean
  inputBinding:
    prefix: -m
- id: b
  doc: ': Use histogram buckets of this size (default 1Kbp).'
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- DBstats
