class: CommandLineTool
id: rm_spurious_events.pl.cwl
inputs:
- id: frac_max
  doc: filter out alignments supported by less reads than this fraction of the maximum
    number of reads per position
  type: boolean
  inputBinding:
    prefix: --frac_max
- id: debug
  doc: enable debug output
  type: boolean
  inputBinding:
    prefix: --debug
- id: man
  doc: full documentation
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- rm_spurious_events.pl
