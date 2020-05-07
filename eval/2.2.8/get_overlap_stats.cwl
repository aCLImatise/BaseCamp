class: CommandLineTool
id: get_overlap_stats.pl.cwl
inputs:
- id: g
  doc: ': Input files are in GTF format.'
  type: boolean
  inputBinding:
    prefix: -g
- id: q
  doc: ': Quick load the gtf file.  Do not check them for errors.'
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: ': Verbose mode.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- get_overlap_stats.pl
