class: CommandLineTool
id: removeRepeats.pl.cwl
inputs:
- id: in_reference_sequence_filename
  doc: reference sequence filename
  type: File?
  inputBinding:
    prefix: -f
- id: in_tabdelimited_coords_filename
  doc: tab-delimited coords filename
  type: File?
  inputBinding:
    prefix: -c
- id: in_output_multifasta_filename
  doc: 'output multifasta filename (default: non_repeats.fna)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_output_repeats_stats
  doc: 'output repeats stats filename (default: non_repeat_stats.txt)'
  type: File?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_multifasta_filename
  doc: 'output multifasta filename (default: non_repeats.fna)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_multifasta_filename)
- id: out_output_repeats_stats
  doc: 'output repeats stats filename (default: non_repeat_stats.txt)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_repeats_stats)
hints: []
cwlVersion: v1.1
baseCommand:
- removeRepeats.pl
