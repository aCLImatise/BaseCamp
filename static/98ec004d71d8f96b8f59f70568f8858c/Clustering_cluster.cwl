class: CommandLineTool
id: Clustering_cluster.cwl
inputs:
- id: in_no_clust_out
  doc: Don't write out clustering
  type: boolean?
  inputBinding:
    prefix: --no-clust-out
- id: in_dist_file
  doc: Sorted column distance matrix file
  type: File?
  inputBinding:
    prefix: --dist-file
- id: in_id_mapping
  doc: Id mapping file
  type: File?
  inputBinding:
    prefix: --id-mapping
- id: in_method
  doc: "Clustering method to use (default=complete,\nothers={upgma,single})"
  type: string?
  inputBinding:
    prefix: --method
- id: in_outfile
  doc: Output file
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_psi
  doc: Psi value (optional)
  type: string?
  inputBinding:
    prefix: --psi
- id: in_sample_mapping
  doc: Sample mapping file
  type: File?
  inputBinding:
    prefix: --sample-mapping
- id: in_step
  doc: Step value (default=.01 [1%])
  type: double?
  inputBinding:
    prefix: --step
- id: in_tree_file
  doc: Write out merges to file
  type: File?
  inputBinding:
    prefix: --tree-file
- id: in_clustering
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_arg
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_tree_file
  doc: Write out merges to file
  type: File?
  outputBinding:
    glob: $(inputs.in_tree_file)
hints: []
cwlVersion: v1.1
baseCommand:
- Clustering
- cluster
