class: CommandLineTool
id: paf2gfa.cwl
inputs:
- id: in_directions_arc_present
  doc: both directions of an arc are present in input
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_keep_unidirectional_edges
  doc: keep unidirectional edges (effective with -b)
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_cut_filter_initial
  doc: cut and filter initial hits
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_max_overhang_length
  doc: max overhang length [100]
  type: long?
  inputBinding:
    prefix: -h
- id: in_min_overlap_length
  doc: min overlap length [500]
  type: long?
  inputBinding:
    prefix: -o
- id: in_apply_graph_cleaning
  doc: apply graph cleaning (up to 3)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_generate_unitigs
  doc: generate unitigs
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_input_reads
  doc: input reads []
  type: File?
  inputBinding:
    prefix: -i
- id: in_in_dot_paf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gfatools:0.4--hed695b0_0
cwlVersion: v1.1
baseCommand:
- paf2gfa
