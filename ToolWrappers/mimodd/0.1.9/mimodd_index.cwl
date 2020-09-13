class: CommandLineTool
id: ../../../mimodd_index.cwl
inputs:
- id: in_output
  doc: "specifies the location at which to save the index\n(default: save the index\
    \ alongside the input file as\n<input file>.<INDEX_TYPE> for indices of type \"\
    fai\"\nand \"bai\", or in a directory <input file>.snap_index)"
  type: File
  inputBinding:
    prefix: --output
- id: in_threads
  doc: "maximum number of threads to use (overrides config\nsetting)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_quiet
  doc: suppress original messages from underlying tools
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_idx_seed_size
  doc: 'Seed size used in building the index (default: 20)'
  type: long
  inputBinding:
    prefix: --idx-seedsize
- id: in_idx_slack
  doc: 'Hash table slack for indexing (default: 0.3)'
  type: double
  inputBinding:
    prefix: --idx-slack
- id: in_idx_overflow
  doc: "factor (between 1 and 1000) to set the size of the\nindex build overflow space\
    \ (default: 40)\n"
  type: long
  inputBinding:
    prefix: --idx-overflow
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mimodd
- index
