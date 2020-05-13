class: CommandLineTool
id: funannotate_sort.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: Multi-fasta genome file. (Required)
  type: boolean
  inputBinding:
    prefix: --input
- id: out
  doc: Sorted by size and relabeled output file. (Required)
  type: boolean
  inputBinding:
    prefix: --out
- id: base
  doc: 'Base name to relabel contigs. Default: scaffold'
  type: boolean
  inputBinding:
    prefix: --base
- id: min_len
  doc: 'Shorter contigs are discarded. Default: 0'
  type: boolean
  inputBinding:
    prefix: --minlen
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- sort
