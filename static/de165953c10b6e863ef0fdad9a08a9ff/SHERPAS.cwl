class: CommandLineTool
id: SHERPAS.cwl
inputs:
- id: in_path_phylokmer_database
  doc: Path to the phylo-kmer database
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_path_strainalignment_file
  doc: Path to the strain-alignment file
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_path_query_file
  doc: Path to the query file
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_path_output_directory
  doc: Path to the output directory
  type: File?
  inputBinding:
    prefix: -o
- id: in_window_size_default
  doc: Window size (default=300)
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_method_f_r
  doc: Method (F or R, default=F)
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_threshold_unassigned_regions
  doc: Threshold for unassigned regions (default=100 [F] or 0.99 [R])
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_activates_circularity_options
  doc: Activates circularity options (to be used for circular queries)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_changes_output_layout
  doc: Changes output layout
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_disables_posttreatment_unassigned
  doc: Disables post-treatment of unassigned regions
  type: boolean?
  inputBinding:
    prefix: -k
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_directory
  doc: Path to the output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_path_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sherpas:1.0.2--h78a066a_0
cwlVersion: v1.1
baseCommand:
- SHERPAS
