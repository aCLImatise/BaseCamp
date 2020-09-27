class: CommandLineTool
id: get_repeat_coords.pl.cwl
inputs:
- id: in_identity_cutoff_default
  doc: 'the identity cutoff 0 to 100 (default: 95)'
  type: long
  inputBinding:
    prefix: -i
- id: in_repeat_length_cutoff
  doc: the repeat length cutoff (default:0)
  type: long
  inputBinding:
    prefix: -l
- id: in_output_filename_default
  doc: 'output filename (default: repeats_coords.txt)'
  type: File
  inputBinding:
    prefix: -o
- id: in_output_stats_filename
  doc: 'output stats filename (default: repeats_stats.txt)'
  type: File
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename_default
  doc: 'output filename (default: repeats_coords.txt)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_filename_default)
- id: out_output_stats_filename
  doc: 'output stats filename (default: repeats_stats.txt)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_stats_filename)
cwlVersion: v1.1
baseCommand:
- get_repeat_coords.pl
