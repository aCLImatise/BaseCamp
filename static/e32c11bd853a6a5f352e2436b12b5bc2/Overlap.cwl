class: CommandLineTool
id: Overlap.cwl
inputs:
- id: in_kmer_size
  doc: k-mer size
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_min
  doc: "require a minimum of OVERLAP bases\ndefault is 5 bases"
  type: long?
  inputBinding:
    prefix: --min
- id: in_scaffold
  doc: join contigs with Ns [default]
  type: boolean?
  inputBinding:
    prefix: --scaffold
- id: in_no_scaffold
  doc: do not scaffold
  type: boolean?
  inputBinding:
    prefix: --no-scaffold
- id: in_mask_repeat
  doc: "join contigs at a simple repeat and mask\nthe repeat sequence [default]"
  type: boolean?
  inputBinding:
    prefix: --mask-repeat
- id: in_no_merge_repeat
  doc: "'t join contigs at a repeat"
  type: string?
  inputBinding:
    prefix: --no-merge-repeat
- id: in_ss
  doc: expect contigs to be oriented correctly
  type: boolean?
  inputBinding:
    prefix: --SS
- id: in_no_ss
  doc: no assumption about contig orientation [default]
  type: boolean?
  inputBinding:
    prefix: --no-SS
- id: in_graph
  doc: write the contig adjacency graph to FILE
  type: File?
  inputBinding:
    prefix: --graph
- id: in_adj
  doc: output the graph in ADJ format [default]
  type: boolean?
  inputBinding:
    prefix: --adj
- id: in_as_qg
  doc: output the graph in ASQG format
  type: boolean?
  inputBinding:
    prefix: --asqg
- id: in_dot
  doc: output the graph in GraphViz format
  type: boolean?
  inputBinding:
    prefix: --dot
- id: in_gfa
  doc: output the graph in GFA1 format
  type: boolean?
  inputBinding:
    prefix: --gfa
- id: in_gfa_one
  doc: output the graph in GFA1 format
  type: boolean?
  inputBinding:
    prefix: --gfa1
- id: in_gfa_two
  doc: output the graph in GFA2 format
  type: boolean?
  inputBinding:
    prefix: --gfa2
- id: in_gv
  doc: output the graph in GraphViz format
  type: boolean?
  inputBinding:
    prefix: --gv
- id: in_sam
  doc: output the graph in SAM format
  type: boolean?
  inputBinding:
    prefix: --sam
- id: in_out
  doc: write result to FILE
  type: File?
  inputBinding:
    prefix: --out
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_var_19
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.3.1--hd403d74_0
cwlVersion: v1.1
baseCommand:
- Overlap
