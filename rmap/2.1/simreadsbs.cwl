#!/usr/bin/env cwl-runner

baseCommand:
- simreadsbs
class: CommandLineTool
cwlVersion: v1.0
id: simreadsbs
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
- doc: 'rate of CpG methylation '
  id: meth
  inputBinding:
    prefix: -meth
  type: boolean
- doc: 'rate of bisulfite conversion '
  id: bs
  inputBinding:
    prefix: -bs
  type: boolean
- doc: 'generate A/G wildcard reads '
  id: ag
  inputBinding:
    prefix: -ag
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
