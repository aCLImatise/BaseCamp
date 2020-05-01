#!/usr/bin/env cwl-runner

baseCommand:
- tigmint-cut
class: CommandLineTool
cwlVersion: v1.0
id: tigmint-cut
inputs:
- doc: Reference genome fasta file (must have FAI index generated)
  id: fast_a
  inputBinding:
    position: 0
  type: string
- doc: Sorted bed file of molecule extents
  id: bed
  inputBinding:
    position: 1
  type: string
- doc: The output FASTA file.
  id: fast_a_out
  inputBinding:
    prefix: --fastaout
  type: string
- doc: The output BED file. Default is the output FASTA filename plus .bed
  id: bed_out
  inputBinding:
    prefix: --bedout
  type: string
- doc: Number of parallel processes to launch [8]
  id: processes
  inputBinding:
    prefix: --processes
  type: string
- doc: Window size used to check for spanning molecules (bp) [1000]
  id: window
  inputBinding:
    prefix: --window
  type: string
- doc: Spanning molecules threshold (no misassembly in window if num. spanning molecules
    >= n [2])
  id: spanning
  inputBinding:
    prefix: --spanning
  type: string
- doc: Number of base pairs to trim at contig cuts (bp) [0]
  id: trim
  inputBinding:
    prefix: --trim
  type: string
