class: CommandLineTool
id: cluster.cwl
inputs:
- id: in_output_ancestree_input
  doc: Output AncesTree input file
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_clustering_input_filename
  doc: Clustering input filename
  type: File?
  inputBinding:
    prefix: -C
- id: in_fwr
  doc: Family-wise error rate
  type: long?
  inputBinding:
    prefix: -FWR
- id: in_confidence_interval_used_clustering
  doc: 'Confidence interval used for clustering (default: 0.001)'
  type: long?
  inputBinding:
    prefix: -a
- id: in_confidence_interval_used_pooled
  doc: 'Confidence interval used for pooled frequency matrix (default: 0.01)'
  type: long?
  inputBinding:
    prefix: -b
- id: in_relabel_mutation_clusters
  doc: Relabel mutation clusters
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_var_lb
  doc: "Minimum number of variant reads (default: 3)\n"
  type: long?
  inputBinding:
    prefix: -varLB
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/machina:1.2--h176a8bc_1
cwlVersion: v1.1
baseCommand:
- cluster
