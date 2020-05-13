class: CommandLineTool
id: Overlap.cwl
inputs:
- id: km_er
  doc: k-mer size
  type: string
  inputBinding:
    prefix: --kmer
- id: min
  doc: require a minimum of OVERLAP bases default is 5 bases
  type: string
  inputBinding:
    prefix: --min
- id: scaffold
  doc: join contigs with Ns [default]
  type: boolean
  inputBinding:
    prefix: --scaffold
- id: no_scaffold
  doc: do not scaffold
  type: boolean
  inputBinding:
    prefix: --no-scaffold
- id: mask_repeat
  doc: join contigs at a simple repeat and mask the repeat sequence [default]
  type: boolean
  inputBinding:
    prefix: --mask-repeat
- id: no_merge_repeat
  doc: "'t join contigs at a repeat"
  type: string
  inputBinding:
    prefix: --no-merge-repeat
- id: ss
  doc: expect contigs to be oriented correctly
  type: boolean
  inputBinding:
    prefix: --SS
- id: no_ss
  doc: no assumption about contig orientation [default]
  type: boolean
  inputBinding:
    prefix: --no-SS
- id: graph
  doc: write the contig adjacency graph to FILE
  type: File
  inputBinding:
    prefix: --graph
- id: adj
  doc: output the graph in ADJ format [default]
  type: boolean
  inputBinding:
    prefix: --adj
- id: as_qg
  doc: output the graph in ASQG format
  type: boolean
  inputBinding:
    prefix: --asqg
- id: dot
  doc: output the graph in GraphViz format
  type: boolean
  inputBinding:
    prefix: --dot
- id: gfa
  doc: output the graph in GFA1 format
  type: boolean
  inputBinding:
    prefix: --gfa
- id: gfa1
  doc: output the graph in GFA1 format
  type: boolean
  inputBinding:
    prefix: --gfa1
- id: gfa2
  doc: output the graph in GFA2 format
  type: boolean
  inputBinding:
    prefix: --gfa2
- id: gv
  doc: output the graph in GraphViz format
  type: boolean
  inputBinding:
    prefix: --gv
- id: sam
  doc: output the graph in SAM format
  type: boolean
  inputBinding:
    prefix: --sam
- id: out
  doc: write result to FILE
  type: File
  inputBinding:
    prefix: --out
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- Overlap
