#!/usr/bin/env cwl-runner

baseCommand:
- prune
class: CommandLineTool
cwlVersion: v1.0
id: prune
inputs:
- doc: max separation distance (bp) of adjacent loci in cluster [50]
  id: distance
  inputBinding:
    prefix: --distance
  type: long
- doc: evaluating parameter for choosing best bedpe in a cluster(e.g. af=AlleleFrequency
    default:af)
  id: eval_param
  inputBinding:
    prefix: --eval_param
  type: string
- doc: "specifying if an input file is sorted (default=False) (use following command\
    \ to sort: 'cat FILE | sort -k1,1V -k2,2n -k3,3n -k4,4V -k5,5n -k6,6')"
  id: is_sorted
  inputBinding:
    prefix: --is_sorted
  type: boolean
- doc: 'Output bedpe to write (default: stdout)'
  id: output
  inputBinding:
    prefix: --output
  type: string
