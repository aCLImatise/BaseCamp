#!/usr/bin/env cwl-runner

baseCommand:
- msaprobs
class: CommandLineTool
cwlVersion: v1.0
id: msaprobs
inputs:
- doc: specify the output file name (STDOUT by default)
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: specify the number of threads used, and otherwise detect automatically
  id: num_threads
  inputBinding:
    prefix: -num_threads
  type: long
- doc: use CLUSTALW output format instead of FASTA format
  id: clustalw
  inputBinding:
    prefix: -clustalw
  type: boolean
- doc: 'use 0 <= REPS <= 5 (default: 2) passes of consistency transformation'
  id: consistency
  inputBinding:
    prefix: --consistency
  type: string
- doc: 'use 0 <= REPS <= 1000 (default: 10) passes of iterative-refinement'
  id: iterative_refinement
  inputBinding:
    prefix: --iterative-refinement
  type: string
- doc: 'report progress while aligning (default: off)'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: write annotation for multiple alignment to FILENAME
  id: an_not
  inputBinding:
    prefix: -annot
  type: File
- doc: 'print sequences in alignment order rather than input order (default: off)'
  id: alignment_order
  inputBinding:
    prefix: --alignment-order
  type: boolean
- doc: 'print out version of MSAPROBS '
  id: version
  inputBinding:
    prefix: -version
  type: boolean
