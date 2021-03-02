class: CommandLineTool
id: megalodon_extras_merge_variants.cwl
inputs:
- id: in_output_megalodon_results_dir
  doc: "Output directory. Default:\nmegalodon_merge_vars_results"
  type: Directory?
  inputBinding:
    prefix: --output-megalodon-results-dir
- id: in_overwrite
  doc: Overwrite output directory if it exists.
  type: Directory?
  inputBinding:
    prefix: --overwrite
- id: in_var_locations_on_disk
  doc: "Force sequnece variant locations to be stored only\nwithin on disk database\
    \ table. This option will reduce\nthe RAM memory requirement, but may slow processing.\n\
    Default: Store positions in memory.\n"
  type: boolean?
  inputBinding:
    prefix: --var-locations-on-disk
- id: in_output_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_megalodon_results_dir
  doc: "Output directory. Default:\nmegalodon_merge_vars_results"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_megalodon_results_dir)
- id: out_overwrite
  doc: Overwrite output directory if it exists.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_overwrite)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- merge
- variants
