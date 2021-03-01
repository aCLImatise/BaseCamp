class: CommandLineTool
id: phyluce_align_screen_alignments_for_problems.cwl
inputs:
- id: in_alignments
  doc: "The directory containing alignments to be screened.\n(default: None)"
  type: Directory?
  inputBinding:
    prefix: --alignments
- id: in_output
  doc: "The directory in which to store the resulting\nalignments. (default: None)"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_do_not_screen_n
  doc: "Screen alignments for taxa containing ambiguous (N)\nbases. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --do-not-screen-n
- id: in_do_not_screen_x
  doc: "Screen alignments for taxa containing ambiguous (X)\nbases. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --do-not-screen-x
- id: in_input_format
  doc: 'The input alignment format (default: nexus)'
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: File?
  inputBinding:
    prefix: --log-path
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs.\n(default: 1)\n"
  type: long?
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_screen_alignments_for_problems
