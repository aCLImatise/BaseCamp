class: CommandLineTool
id: Bifrost.cwl
inputs:
- id: build
  doc: Build a compacted de Bruijn graph, with or without colors
  type: string
  inputBinding:
    position: 0
- id: update
  doc: Update a compacted (possible colored) de Bruijn graph with new sequences
  type: string
  inputBinding:
    position: 1
- id: query
  doc: Query a compacted (possible colored) de Bruijn graph
  type: string
  inputBinding:
    position: 2
- id: colors
  doc: Color the compacted de Bruijn graph (default is no coloring)
  type: boolean
  inputBinding:
    prefix: --colors
- id: keep_mercy
  doc: Keep low coverage k-mers connecting tips
  type: boolean
  inputBinding:
    prefix: --keep-mercy
- id: clip_tips
  doc: Clip tips shorter than k k-mers in length
  type: boolean
  inputBinding:
    prefix: --clip-tips
- id: del_isolated
  doc: Delete isolated contigs shorter than k k-mers in length
  type: boolean
  inputBinding:
    prefix: --del-isolated
- id: fast_a
  doc: Output file is in FASTA format (only sequences) instead of GFA
  type: boolean
  inputBinding:
    prefix: --fasta
- id: verbose
  doc: Print information messages during execution
  type: boolean
  inputBinding:
    prefix: --verbose
- id: clip_tips
  doc: Clip tips shorter than k k-mers in length
  type: boolean
  inputBinding:
    prefix: --clip-tips
- id: del_isolated
  doc: Delete isolated contigs shorter than k k-mers in length
  type: boolean
  inputBinding:
    prefix: --del-isolated
- id: verbose
  doc: Print information messages during execution
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_exact
  doc: Graph is searched with exact and inexact k-mers (1 substitution or indel) from
    queries
  type: boolean
  inputBinding:
    prefix: --inexact
- id: verbose
  doc: Print information messages during execution
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- Bifrost
