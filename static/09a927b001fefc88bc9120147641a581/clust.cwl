class: CommandLineTool
id: clust.cwl
inputs:
- id: in_normalisation_file_list
  doc: "[<file or int> ...]\nNormalisation file or list of codes (default: 1000)"
  type: long?
  inputBinding:
    prefix: -n
- id: in_replicates_structure_file
  doc: Replicates structure file
  type: File?
  inputBinding:
    prefix: -r
- id: in_orthogroups_ogs_mapping
  doc: OrthoGroups (OGs) mapping file
  type: File?
  inputBinding:
    prefix: -m
- id: in_output_directory
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_cluster_tightness_default
  doc: 'Cluster tightness (default: 1.0).'
  type: long?
  inputBinding:
    prefix: -t
- id: in_base_methods
  doc: "[<string> ...]\nOne or more base clustering methods (default: k-means)"
  type: string?
  inputBinding:
    prefix: -basemethods
- id: in_k_values_default
  doc: "[<integer> ...]\nK values, e.g. 2 4 6 10 ... (default: 4 to 20 (step=4))"
  type: long?
  inputBinding:
    prefix: -K
- id: in_outlier_standard_deviations
  doc: 'Outlier standard deviations (default: 3.0)'
  type: long?
  inputBinding:
    prefix: -s
- id: in_min_datasets_exist
  doc: 'Min datasets in which a gene must exist (default: 1)'
  type: long?
  inputBinding:
    prefix: -d
- id: in_fil_v
  doc: 'Filtering: gene expression threshold (default: -inf)'
  type: long?
  inputBinding:
    prefix: -fil-v
- id: in_fil_c
  doc: 'Filtering: number of conditions (default: 0)'
  type: long?
  inputBinding:
    prefix: -fil-c
- id: in_fil_d
  doc: 'Filtering: number of datasets (default: 0)'
  type: long?
  inputBinding:
    prefix: -fil-d
- id: in_fil_abs
  doc: Filter using absolute values of expression
  type: boolean?
  inputBinding:
    prefix: --fil-abs
- id: in_fil_perc
  doc: a percentile of genes rather than raw value
  type: string?
  inputBinding:
    prefix: --fil-perc
- id: in_fil_flat
  doc: Filter out genes with flat expression profiles (default)
  type: boolean?
  inputBinding:
    prefix: --fil-flat
- id: in_no_fil_flat
  doc: Cancels the default --fil-flat option
  type: boolean?
  inputBinding:
    prefix: --no-fil-flat
- id: in_cs
  doc: 'Smallest cluster size (default: 11)'
  type: long?
  inputBinding:
    prefix: -cs
- id: in_q_threes
  doc: 'Q3s defining outliers (default: 2.0)'
  type: long?
  inputBinding:
    prefix: -q3s
- id: in_no_optimisation
  doc: Skip cluster optimsation & completion
  type: boolean?
  inputBinding:
    prefix: --no-optimisation
- id: in_deterministic
  doc: Obsolete. All steps are already deterministic (v1.7.4+)
  type: boolean?
  inputBinding:
    prefix: --deterministic
- id: in_np
  doc: 'Obsolete. Number of parallel processes (default: 1)'
  type: long?
  inputBinding:
    prefix: -np
- id: in_data_path
  doc: Data file path or directory with data file(s).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- clust
