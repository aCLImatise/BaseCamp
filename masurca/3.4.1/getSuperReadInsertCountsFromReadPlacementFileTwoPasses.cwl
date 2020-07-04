class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/getSuperReadInsertCountsFromReadPlacementFileTwoPasses.cwl
inputs:
- id: output
  doc: Output file
  type: File
  inputBinding:
    prefix: --output
- id: fib
  doc: Use fibonacci encoding (false)
  type: boolean
  inputBinding:
    prefix: --fib
- id: number_reads
  doc: Estimated number of super-reads (1000000)
  type: string
  inputBinding:
    prefix: --number-reads
- id: debug
  doc: Output debugging information (false)
  type: boolean
  inputBinding:
    prefix: --debug
- id: cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- getSuperReadInsertCountsFromReadPlacementFileTwoPasses
