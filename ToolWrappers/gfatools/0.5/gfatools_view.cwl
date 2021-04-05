class: CommandLineTool
id: gfatools_view.cwl
inputs:
- id: in_verbose_level
  doc: verbose level [2]
  type: long?
  inputBinding:
    prefix: -v
- id: in_file_segment_list
  doc: /@FILE  segment list to subset []
  type: File?
  inputBinding:
    prefix: -l
- id: in_region_based_region
  doc: a region like chr1:101-200 (a 1-based closed region) []
  type: long?
  inputBinding:
    prefix: -R
- id: in_subset_radius_effective
  doc: subset radius (effective with -l) [0]
  type: long?
  inputBinding:
    prefix: -r
- id: in_delete_list_segments
  doc: delete the list of segments (requiring -l; ignoring -r)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_remove_multiple_edges
  doc: remove multiple edges
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_do_print_sequences
  doc: don't print sequences
  type: boolean?
  inputBinding:
    prefix: -S
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
- view
