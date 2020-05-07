class: CommandLineTool
id: removeRepeats.pl.cwl
inputs:
- id: f
  doc: reference sequence filename
  type: string
  inputBinding:
    prefix: -f
- id: c
  doc: tab-delimited coords filename
  type: string
  inputBinding:
    prefix: -c
- id: o
  doc: 'output multifasta filename (default: non_repeats.fna)'
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: 'output repeats stats filename (default: non_repeat_stats.txt)'
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- removeRepeats.pl
