class: CommandLineTool
id: gfatools_asm.cwl
inputs:
- id: in_transitive_reduction_fuzzy
  doc: transitive reduction (fuzzy length)
  type: long?
  inputBinding:
    prefix: -r
- id: in_cut_tips_length
  doc: cut tips (tip seg count, tip length [inf])
  type: long?
  inputBinding:
    prefix: -t
- id: in_pop_bubbles_max
  doc: pop bubbles (max radius, max deletions [inf])
  type: long?
  inputBinding:
    prefix: -b
- id: in_pop_bubbles_along
  doc: pop bubbles along with small tips (max radius, max del [inf])
  type: long?
  inputBinding:
    prefix: -B
- id: in_cut_short_ratio
  doc: cut short overlaps (ratio to the longest overlap, overlap length [0])
  type: double?
  inputBinding:
    prefix: -o
- id: in_cut_overlaps_topology
  doc: cut overlaps, topology aware (ratio, tip seg count [3], tip length [inf])
  type: double?
  inputBinding:
    prefix: -c
- id: in_generate_unitigs
  doc: generate unitigs
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_verbose_level
  doc: verbose level [2]
  type: long?
  inputBinding:
    prefix: -v
- id: in_in_dot_gfa
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
  dockerPull: quay.io/biocontainers/gfatools:0.5--hed695b0_0
cwlVersion: v1.1
baseCommand:
- gfatools
- asm
