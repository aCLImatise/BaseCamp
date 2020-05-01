#!/usr/bin/env cwl-runner

baseCommand:
- synthReadGen
class: CommandLineTool
cwlVersion: v1.0
id: synthreadgen
inputs:
- doc: ''
  id: input_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: output_file
  inputBinding:
    position: 1
  type: string
- doc: ': set distribution used for insert length [1 = normal], 2 = poisson'
  id: id
  inputBinding:
    prefix: -id
  type: string
- doc: ': set distribution used for read length [1 = normal], 2 = poisson'
  id: ld
  inputBinding:
    prefix: -ld
  type: string
- doc: ': inward insert length mean [200.0]'
  id: im
  inputBinding:
    prefix: -im
  type: string
- doc: ': outward insert length mean [500.0]'
  id: om
  inputBinding:
    prefix: -om
  type: string
- doc: ': inward insert length std dev [10.0]'
  id: is
  inputBinding:
    prefix: -is
  type: string
- doc: ': outward insert length std dev [15.0]'
  id: os
  inputBinding:
    prefix: -os
  type: string
- doc: ': probability for an inward read [0.5]'
  id: ip
  inputBinding:
    prefix: -ip
  type: string
- doc: ': illumina error char [^]'
  id: er
  inputBinding:
    prefix: -er
  type: string
- doc: ': number of reads to make [1000]'
  id: nr
  inputBinding:
    prefix: -nr
  type: string
- doc: ': read length mean [85.0]'
  id: rl
  inputBinding:
    prefix: -rl
  type: string
- doc: ': read length sigma [7.0]'
  id: rs
  inputBinding:
    prefix: -rs
  type: string
- doc: ': no error for first x bases in a read [0]'
  id: ps
  inputBinding:
    prefix: -ps
  type: string
- doc: ': outputs two fastq files for bowtie mapping [off]'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
