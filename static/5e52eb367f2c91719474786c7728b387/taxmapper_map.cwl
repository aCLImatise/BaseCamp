class: CommandLineTool
id: taxmapper_map.cwl
inputs:
- id: m
  doc: Maximum read length
  type: long
  inputBinding:
    prefix: -m
- id: forward
  doc: Forward read aln file
  type: File
  inputBinding:
    prefix: --forward
- id: reverse
  doc: Reverse read aln file [optional]
  type: File
  inputBinding:
    prefix: --reverse
- id: out
  doc: 'Output file [default: taxa.tsv]'
  type: string
  inputBinding:
    prefix: --out
- id: combine
  doc: 'How to combine forward and reverse hits, for "concordant" forward and reverse
    have to map to the same taxon, for "best" the best hit from forward and reverse
    is returned [default: best]'
  type: string
  inputBinding:
    prefix: --combine
- id: threads
  doc: 'Number of threads, used to map forward and reverse reads in parallel [default:
    2]'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- taxmapper
- map
