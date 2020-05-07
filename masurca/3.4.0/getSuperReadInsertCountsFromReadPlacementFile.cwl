class: CommandLineTool
id: getSuperReadInsertCountsFromReadPlacementFile.cwl
inputs:
- id: cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: Input file (/dev/fd/0)
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: Output file (/dev/fd/1)
  type: File
  inputBinding:
    prefix: --output
- id: fib
  doc: Use fibonacci encoding of the names (false)
  type: boolean
  inputBinding:
    prefix: --fib
- id: bloom
  doc: Use a bloom filter to remove unique super-reads (false)
  type: boolean
  inputBinding:
    prefix: --bloom
- id: number_reads
  doc: Estimated number of super-reads (1000000)
  type: string
  inputBinding:
    prefix: --number-reads
outputs: []
cwlVersion: v1.1
baseCommand:
- getSuperReadInsertCountsFromReadPlacementFile
