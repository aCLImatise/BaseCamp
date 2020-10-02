class: CommandLineTool
id: add_score_tags_to_bam.cwl
inputs:
- id: in_arg_value_substract
  doc: "[ --phred_offset ] arg (=33)       Value to substract from ASCII code to\n\
    get the PHRED quality."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_issue_warning
  doc: "[ --bad_alignment_threshold ] arg (=1000)\nIssue a warning when AS tag is\
    \ above\nthis value."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_output_tagcould_computed
  doc: "[ --skip_unknown ]                 Do not output reads for which no AS tag\n\
    could be computed, e.g. because the\nreference sequence was unknown."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_number_threads
  doc: "[ --threads ] arg (=0)             Number of threads (default: 0 =\nstrictly\
    \ single-threaded).\n"
  type: boolean
  inputBinding:
    prefix: -T
- id: in_reference_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add-score-tags-to-bam
