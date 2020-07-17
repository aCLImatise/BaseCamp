class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/get_repeat_coords.pl.cwl
inputs:
- id: identity_cutoff_default
  doc: 'the identity cutoff 0 to 100 (default: 95)'
  type: long
  inputBinding:
    prefix: -i
- id: repeat_length_cutoff
  doc: the repeat length cutoff (default:0)
  type: long
  inputBinding:
    prefix: -l
- id: output_filename_default
  doc: 'output filename (default: repeats_coords.txt)'
  type: string
  inputBinding:
    prefix: -o
- id: output_stats_filename
  doc: 'output stats filename (default: repeats_stats.txt)'
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- get_repeat_coords.pl
