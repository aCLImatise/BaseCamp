class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/KAligner.cwl
inputs:
- id: multimap
  doc: allow duplicate k-mer in the target
  type: boolean
  inputBinding:
    prefix: --multimap
- id: no_multimap
  doc: disallow duplicate k-mer in the target
  type: boolean
  inputBinding:
    prefix: --no-multimap
- id: threads
  doc: use N threads [2] up to one per query file or if N is 0 use one thread per
    query file
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: no_sam
  doc: output the results in KAligner format
  type: boolean
  inputBinding:
    prefix: --no-sam
- id: sam
  doc: output the results in SAM format
  type: boolean
  inputBinding:
    prefix: --sam
- id: seq
  doc: print the sequence with the alignments
  type: boolean
  inputBinding:
    prefix: --seq
- id: k
  doc: ''
  type: boolean
  inputBinding:
    prefix: -k
- id: km_er
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- KAligner
