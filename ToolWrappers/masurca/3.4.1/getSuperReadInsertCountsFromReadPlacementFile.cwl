class: CommandLineTool
id: getSuperReadInsertCountsFromReadPlacementFile.cwl
inputs:
- id: in_input
  doc: Input file (/dev/fd/0)
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output file (/dev/fd/1)
  type: File?
  inputBinding:
    prefix: --output
- id: in_fib
  doc: Use fibonacci encoding of the names (false)
  type: boolean?
  inputBinding:
    prefix: --fib
- id: in_bloom
  doc: Use a bloom filter to remove unique super-reads (false)
  type: boolean?
  inputBinding:
    prefix: --bloom
- id: in_number_reads
  doc: Estimated number of super-reads (1000000)
  type: long?
  inputBinding:
    prefix: --number-reads
- id: in_cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (/dev/fd/1)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- getSuperReadInsertCountsFromReadPlacementFile
