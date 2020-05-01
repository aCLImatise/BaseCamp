#!/usr/bin/env cwl-runner

baseCommand:
- sortByRefAndCor.pl
class: CommandLineTool
cwlVersion: v1.0
id: sortbyrefandcor.pl
inputs:
- doc: input file to sort. If '-' is specified,  then reads from STDIN.
  id: input
  inputBinding:
    position: 0
  type: string
- doc: .fai file, or ANY file that has contigs, in the desired soting order, as its
    first column.
  id: ref_dict
  inputBinding:
    position: 1
  type: string
- doc: ':   contig name is in the field POS (1-based) of input lines.'
  id: k
  inputBinding:
    prefix: --k
  type: string
- doc: ':   contig cordinate is in the field COR (1-based) of input lines.'
  id: c
  inputBinding:
    prefix: --c
  type: string
- doc: ': temp directory [default=/tmp]'
  id: tmp
  inputBinding:
    prefix: --tmp
  type: string
