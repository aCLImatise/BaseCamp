class: CommandLineTool
id: ref_stats.pl.cwl
inputs:
- id: in_specify_bin_size
  doc: '#          specify bin size for histogram (default 100)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ref_stats.pl
