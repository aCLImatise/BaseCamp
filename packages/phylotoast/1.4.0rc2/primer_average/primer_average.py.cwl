class: CommandLineTool
id: primer_average.py.cwl
inputs:
- id: in_p_one
  doc: Primer-set 1 seqs_otus results files.
  type: long
  inputBinding:
    prefix: --p1
- id: in_p_two
  doc: Primer-set 2 seqs_otus results files.
  type: long
  inputBinding:
    prefix: --p2
- id: in_output_fp
  doc: "The combined seqs_otus file that has been averaged by\nshared OTU entries.\
    \ Default: combined_seqs_otus.txt"
  type: File
  inputBinding:
    prefix: --output_fp
- id: in_verbose
  doc: Print detailed information about script operation.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_one_zero_dot_one_three_seven_one_slash_journal_dot_p_one_dot_zero_zero_two_zero_nine_five_six
  doc: 'optional arguments:'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- primer_average.py
