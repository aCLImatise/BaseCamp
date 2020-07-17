class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/removeRepeats.pl.cwl
inputs:
- id: reference_sequence_filename
  doc: reference sequence filename
  type: string
  inputBinding:
    prefix: -f
- id: tabdelimited_coords_filename
  doc: tab-delimited coords filename
  type: string
  inputBinding:
    prefix: -c
- id: output_multifasta_filename
  doc: 'output multifasta filename (default: non_repeats.fna)'
  type: string
  inputBinding:
    prefix: -o
- id: output_repeats_default
  doc: 'output repeats stats filename (default: non_repeat_stats.txt)'
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- removeRepeats.pl
