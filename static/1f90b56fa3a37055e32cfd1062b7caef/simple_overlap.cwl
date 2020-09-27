class: CommandLineTool
id: simple_overlap.cwl
inputs:
- id: in_also_show_alignments
  doc: Also show alignments of overlaps
  type: boolean
  inputBinding:
    prefix: -a
- id: in_maximum_error_rate
  doc: "Maximum error rate for overlaps is <x>\ne.g., -E 0.06 for 6 6.898821e-310rror\
    \ rate"
  type: double
  inputBinding:
    prefix: -E
- id: in_input_fasta_file
  doc: Input is a fasta file
  type: boolean
  inputBinding:
    prefix: -F
- id: in_set_minimum_overlap
  doc: Set minimum overlap length to <n>
  type: long
  inputBinding:
    prefix: -o
- id: in_set_verbose_level
  doc: Set verbose level to <n>.  Higher produces more output.
  type: string
  inputBinding:
    prefix: -v
- id: in_bank_name
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
- simple-overlap
