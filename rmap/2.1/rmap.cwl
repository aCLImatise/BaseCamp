#!/usr/bin/env cwl-runner

baseCommand:
- rmap
class: CommandLineTool
cwlVersion: v1.0
id: rmap
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: fast_q_reads_file
  inputBinding:
    position: 1
  type: string
- doc: 'output file name '
  id: output
  inputBinding:
    prefix: -output
  type: boolean
- doc: 'chromosomes in FASTA file or dir '
  id: chrom
  inputBinding:
    prefix: -chrom
  type: boolean
- doc: 'index of first read to map '
  id: start
  inputBinding:
    prefix: -start
  type: boolean
- doc: 'number of reads to map '
  id: number
  inputBinding:
    prefix: -number
  type: boolean
- doc: 'suffix of chrom files (assumes dir provided) '
  id: suffix
  inputBinding:
    prefix: -suffix
  type: boolean
- doc: 'maximum allowed mismatches '
  id: mismatch
  inputBinding:
    prefix: -mismatch
  type: boolean
- doc: 'file to write names of ambiguously mapped reads '
  id: ambiguous
  inputBinding:
    prefix: -ambiguous
  type: boolean
- doc: 'maximum allowed mappings for a read '
  id: max_map
  inputBinding:
    prefix: -max-map
  type: boolean
- doc: 'clip the specified adaptor '
  id: clip
  inputBinding:
    prefix: -clip
  type: boolean
- doc: 'print more run info '
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: 'print about message '
  id: about
  inputBinding:
    prefix: -about
  type: boolean
