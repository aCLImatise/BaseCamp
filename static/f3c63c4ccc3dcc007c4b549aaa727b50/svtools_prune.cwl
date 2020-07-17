class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svtools_prune.cwl
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
    prefix: --eval-param
- id: is_sorted
  doc: specify if an input file is sorted. Sort with svtools bedpesort. (default=False)
  type: boolean
  inputBinding:
    prefix: --is-sorted
- id: output
  doc: 'output bedpe to write (default: stdout)'
  type: string
  inputBinding:
    prefix: --output
- id: tempdir
  doc: Directory for temp file downloads
  type: string
  inputBinding:
    prefix: --tempdir
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
- prune
