class: CommandLineTool
id: ../../../DBstats.cwl
inputs:
- id: give_stats_untrimmed
  doc: ': Give stats for the untrimmed database.'
  type: boolean
  inputBinding:
    prefix: -u
- id: show_histogram_read
  doc: ': Do not show histogram of read lengths.'
  type: boolean
  inputBinding:
    prefix: -n
- id: show_histogram_mask
  doc: ': Show histogram of mask intervals.'
  type: boolean
  inputBinding:
    prefix: -m
- id: use_histogram_buckets
  doc: ': Use histogram buckets of this size (default 1Kbp).'
  type: boolean
  inputBinding:
    prefix: -b
- id: nu
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nu
- id: db_stats
  doc: '[-nu] [-b<int(1000)>] [-m<mask>]+ <name:db|dam>'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- DBstats
