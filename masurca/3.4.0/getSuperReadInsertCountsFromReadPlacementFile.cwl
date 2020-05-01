#!/usr/bin/env cwl-runner

baseCommand:
- getSuperReadInsertCountsFromReadPlacementFile
class: CommandLineTool
cwlVersion: v1.0
id: getsuperreadinsertcountsfromreadplacementfile
inputs:
- doc: ''
  id: cmdline_parse
  inputBinding:
    position: 0
  type: string
- doc: Input file (/dev/fd/0)
  id: input
  inputBinding:
    prefix: --input
  type: File
- doc: Output file (/dev/fd/1)
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: Use fibonacci encoding of the names (false)
  id: fib
  inputBinding:
    prefix: --fib
  type: boolean
- doc: Use a bloom filter to remove unique super-reads (false)
  id: bloom
  inputBinding:
    prefix: --bloom
  type: boolean
- doc: Estimated number of super-reads (1000000)
  id: number_reads
  inputBinding:
    prefix: --number-reads
  type: string
