class: CommandLineTool
id: haystack_tf_activity_plane.cwl
inputs:
- id: in_tfs
  doc: on Gene Expression-
  type: string
  inputBinding:
    prefix: -TFs
- id: in_motif_mapping_filename
  doc: "Custom motif to gene mapping file (the default is for\nJASPAR CORE 2016 database)"
  type: File
  inputBinding:
    prefix: --motif_mapping_filename
- id: in_output_directory
  doc: 'Output directory (default: current directory)'
  type: Directory
  inputBinding:
    prefix: --output_directory
- id: in_name
  doc: Define a custom output filename for the report
  type: File
  inputBinding:
    prefix: --name
- id: in_plot_all
  doc: "Disable the filter on the TF activity and correlation\n(default z-score TF>0\
    \ and rho>0.3)"
  type: boolean
  inputBinding:
    prefix: --plot_all
- id: in_rho_cut_off
  doc: "The cutoff absolute correlation value (0.0 to 1) for\nwhich activity plots\
    \ are generated (default: 0.3)"
  type: double
  inputBinding:
    prefix: --rho_cutoff
- id: in_tf_value_cut_to_ff
  doc: "The cutoff z-score tf_value for which activity plots\nare generated (default:\
    \ 0.0)"
  type: double
  inputBinding:
    prefix: --tf_value_cuttoff
- id: in_target_cell_type
  doc: HAYSTACK Parameters
  type: string
  inputBinding:
    position: 0
- id: in_haystack_motifs_output_folder
  doc: A path to a folder created by the haystack_motifs
  type: string
  inputBinding:
    position: 0
- id: in_locations
  doc: target_cell_type      The sample name to use as a target for the analysis
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'Output directory (default: current directory)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_name
  doc: Define a custom output filename for the report
  type: File
  outputBinding:
    glob: $(inputs.in_name)
cwlVersion: v1.1
baseCommand:
- haystack_tf_activity_plane
