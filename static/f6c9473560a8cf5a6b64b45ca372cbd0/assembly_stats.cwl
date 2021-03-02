class: CommandLineTool
id: assembly_stats.cwl
inputs:
- id: in_minimum_length_cutoff
  doc: "Minimum length cutoff for each sequence.\nSequences shorter than the cutoff\
    \ will be ignored [1]"
  type: long?
  inputBinding:
    prefix: -l
- id: in_print__output
  doc: Print 'grep friendly' output
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_print_tabdelimited_output
  doc: Print tab-delimited output
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_print_tabdelimited_output_header
  doc: Print tab-delimited output with no header line
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_print_version_exit
  doc: "Print version and exit\n"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_list_of_fast_a_slash_q_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- assembly-stats
