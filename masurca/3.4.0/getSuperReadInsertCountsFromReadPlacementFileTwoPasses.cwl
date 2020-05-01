#!/usr/bin/env cwl-runner

baseCommand:
- getSuperReadInsertCountsFromReadPlacementFileTwoPasses
class: CommandLineTool
cwlVersion: v1.0
id: getsuperreadinsertcountsfromreadplacementfiletwopasses
inputs:
- doc: Output file
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: Use fibonacci encoding (false)
  id: fib
  inputBinding:
    prefix: --fib
  type: boolean
- doc: Estimated number of super-reads (1000000)
  id: number_reads
  inputBinding:
    prefix: --number-reads
  type: string
- doc: Output debugging information (false)
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
