#!/usr/bin/env cwl-runner

baseCommand:
- simreadspe
class: CommandLineTool
cwlVersion: v1.0
id: simreadspe
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: fast_a_chrom_files
  inputBinding:
    position: 1
  type: string
- doc: 'Name of output file (default: stdout) '
  id: output
  inputBinding:
    prefix: -output
  type: boolean
- doc: 'number of reads to simulate '
  id: reads
  inputBinding:
    prefix: -reads
  type: boolean
- doc: 'width of reads to simulate '
  id: width
  inputBinding:
    prefix: -width
  type: boolean
- doc: 'min fragment length '
  id: min_sep
  inputBinding:
    prefix: -min-sep
  type: boolean
- doc: 'max fragment length '
  id: max_sep
  inputBinding:
    prefix: -max-sep
  type: boolean
- doc: 'maximum number of simulated sequencing errors '
  id: err
  inputBinding:
    prefix: -err
  type: boolean
- doc: 'print more run info '
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: 'write FASTQ format reads '
  id: fast_q
  inputBinding:
    prefix: -fastq
  type: boolean
- doc: 'prb output file '
  id: prob
  inputBinding:
    prefix: -prob
  type: boolean
- doc: 'random number seed '
  id: seed
  inputBinding:
    prefix: -seed
  type: boolean
- doc: 'print about message '
  id: about
  inputBinding:
    prefix: -about
  type: boolean
