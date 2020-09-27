class: CommandLineTool
id: getSuperReadInsertCountsFromReadPlacementFileTwoPasses.cwl
inputs:
- id: in_output
  doc: Output file
  type: File
  inputBinding:
    prefix: --output
- id: in_fib
  doc: Use fibonacci encoding (false)
  type: boolean
  inputBinding:
    prefix: --fib
- id: in_number_reads
  doc: Estimated number of super-reads (1000000)
  type: long
  inputBinding:
    prefix: --number-reads
- id: in_debug
  doc: Output debugging information (false)
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- getSuperReadInsertCountsFromReadPlacementFileTwoPasses
