class: CommandLineTool
id: get_repeat_coords.pl.cwl
inputs:
- id: i
  doc: 'the identity cutoff 0 to 100 (default: 95)'
  type: long
  inputBinding:
    prefix: -i
- id: l
  doc: the repeat length cutoff (default:0)
  type: long
  inputBinding:
    prefix: -l
- id: o
  doc: 'output filename (default: repeats_coords.txt)'
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: 'output stats filename (default: repeats_stats.txt)'
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- get_repeat_coords.pl
