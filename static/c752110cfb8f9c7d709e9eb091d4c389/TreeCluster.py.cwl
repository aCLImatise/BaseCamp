class: CommandLineTool
id: TreeCluster.py.cwl
inputs:
- id: in_input
  doc: 'Input Tree File (default: stdin)'
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: 'Output File (default: stdout)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_threshold
  doc: 'Length Threshold (default: None)'
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_support
  doc: 'Branch Support Threshold (default: -inf)'
  type: string?
  inputBinding:
    prefix: --support
- id: in_method
  doc: "Clustering Method (options: avg_clade, leaf_dist_avg,\nleaf_dist_max, leaf_dist_min,\
    \ length, length_clade,\nmax, max_clade, med_clade, root_dist, single_linkage,\n\
    single_linkage_cut, single_linkage_union, sum_branch,\nsum_branch_clade) (default:\
    \ max_clade)"
  type: long?
  inputBinding:
    prefix: --method
- id: in_threshold_free
  doc: "Threshold-Free Approach (options: argmax_clusters)\n(default: None)"
  type: string?
  inputBinding:
    prefix: --threshold_free
- id: in_verbose
  doc: 'Verbose Mode (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output File (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/treecluster:1.0.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- TreeCluster.py
