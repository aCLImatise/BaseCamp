class: CommandLineTool
id: gc_coverage_bias.cwl
inputs:
- id: in_reference_sequence_file
  doc: a reference sequence file about FA format
  type: File
  inputBinding:
    prefix: -r
- id: in_designated_chromosome_i
  doc: the designated chromosome id list file, one id per line, without settings,
    processing all the reference sequence
  type: File
  inputBinding:
    prefix: -c
- id: in_prefix_output_file
  doc: the prefix about output file
  type: File
  inputBinding:
    prefix: -o
- id: in_the_window_length
  doc: the window length[such as:100,200,300]
  type: long
  inputBinding:
    prefix: -w
- id: in_gc_dump
  doc: output the gc ratio in the window length
  type: boolean
  inputBinding:
    prefix: --gcdump
- id: in_dep_win_dump
  doc: output the avg depth in the window length
  type: boolean
  inputBinding:
    prefix: --depwindump
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix_output_file
  doc: the prefix about output file
  type: File
  outputBinding:
    glob: $(inputs.in_prefix_output_file)
cwlVersion: v1.1
baseCommand:
- gc_coverage_bias
