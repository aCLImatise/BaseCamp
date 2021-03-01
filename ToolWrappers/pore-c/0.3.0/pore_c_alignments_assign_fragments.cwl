class: CommandLineTool
id: pore_c_alignments_assign_fragments.cwl
inputs:
- id: in_mapping_quality_cut_off
  doc: "Minimum mapping quality for an alignment to\nbe considered  [default: 1]"
  type: long?
  inputBinding:
    prefix: --mapping_quality_cutoff
- id: in_min_overlap_length
  doc: "Minimum overlap in base pairs between an\nalignment and restriction fragment\n\
    [default: 10]"
  type: long?
  inputBinding:
    prefix: --min_overlap_length
- id: in_containment_cut_off
  doc: "Minimum percentage of a fragment included in\nan overlap for that fragment\
    \ to be\nconsidered 'contained' within an alignment\n[default: 99.0]"
  type: double?
  inputBinding:
    prefix: --containment_cutoff
- id: in_align_table
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
  dockerPull: quay.io/biocontainers/pore-c:0.3.0--py_0
cwlVersion: v1.1
baseCommand:
- pore_c
- alignments
- assign-fragments
