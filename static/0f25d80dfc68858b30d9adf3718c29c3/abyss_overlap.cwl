class: CommandLineTool
id: abyss_overlap.cwl
inputs:
- id: min
  doc: find matches at least N bp [50]
  type: string
  inputBinding:
    prefix: --min
- id: max
  doc: find matches less than N bp [inf]
  type: string
  inputBinding:
    prefix: --max
- id: threads
  doc: use N parallel threads [1]
  type: string
  inputBinding:
    prefix: --threads
- id: sample
  doc: sample the suffix array [1]
  type: string
  inputBinding:
    prefix: --sample
- id: tred
  doc: remove transitive edges [default]
  type: boolean
  inputBinding:
    prefix: --tred
- id: no_tred
  doc: do not remove transitive edges
  type: boolean
  inputBinding:
    prefix: --no-tred
- id: adj
  doc: output the results in adj format
  type: boolean
  inputBinding:
    prefix: --adj
- id: dot
  doc: output the results in dot format [default]
  type: boolean
  inputBinding:
    prefix: --dot
- id: sam
  doc: output the results in SAM format
  type: boolean
  inputBinding:
    prefix: --sam
- id: ss
  doc: expect contigs to be oriented correctly
  type: boolean
  inputBinding:
    prefix: --SS
- id: no_ss
  doc: no assumption about contig orientation
  type: boolean
  inputBinding:
    prefix: --no-SS
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-overlap
