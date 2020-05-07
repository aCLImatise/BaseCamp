class: CommandLineTool
id: prune.cwl
inputs:
- id: distance
  doc: max separation distance (bp) of adjacent loci in cluster [50]
  type: long
  inputBinding:
    prefix: --distance
- id: eval_param
  doc: evaluating parameter for choosing best bedpe in a cluster(e.g. af=AlleleFrequency
    default:af)
  type: string
  inputBinding:
    prefix: --eval_param
- id: is_sorted
  doc: "specifying if an input file is sorted (default=False) (use following command\
    \ to sort: 'cat FILE | sort -k1,1V -k2,2n -k3,3n -k4,4V -k5,5n -k6,6')"
  type: boolean
  inputBinding:
    prefix: --is_sorted
- id: output
  doc: 'Output bedpe to write (default: stdout)'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- prune
