class: CommandLineTool
id: pbdagcon.cwl
inputs:
- id: in_increase_logging_verbosity
  doc: '[ --verbose ]               Increase logging verbosity'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_align_sequences_adding
  doc: '[ --align ]                 Align sequences before adding to consensus'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_arg_trim_alignment
  doc: '[ --trim ] arg (=50)        Trim alignment by N bases on either side'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_filter_alignments
  doc: "[ --min-length ] arg (=500) Filter both alignments and corrected reads\nless\
    \ than length"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_minimum_coverage
  doc: '[ --min-coverage ] arg (=8) Minimum coverage required to correct'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_number_use
  doc: '[ --threads ] arg           Number of consensus threads to use'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_arg_size_read
  doc: '[ --rbuf ] arg (=30)        Size of the read buffer'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_size_write
  doc: '[ --wbuf ] arg (=30)        Size of the write buffer'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_input_flag_optional
  doc: (=-)               Input (flag is optional)
  type: string?
  inputBinding:
    prefix: --input
- id: in_var_9
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pbdagcon
