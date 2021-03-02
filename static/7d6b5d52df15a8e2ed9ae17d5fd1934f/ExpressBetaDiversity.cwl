class: CommandLineTool
id: ExpressBetaDiversity.cwl
inputs:
- id: in_list_calc
  doc: List all supported calculators.
  type: boolean?
  inputBinding:
    prefix: --list-calc
- id: in_unit_tests
  doc: Execute unit tests.
  type: boolean?
  inputBinding:
    prefix: --unit-tests
- id: in_tree_file
  doc: Tree in Newick format (if phylogenetic beta-diversity is desired).
  type: boolean?
  inputBinding:
    prefix: --tree-file
- id: in_seq_count_file
  doc: count file.
  type: File?
  inputBinding:
    prefix: --seq-count-file
- id: in_output_prefix
  doc: Output prefix (default = output).
  type: boolean?
  inputBinding:
    prefix: --output-prefix
- id: in_clustering
  doc: 'Hierarchical clustering method: UPGMA, SingleLinkage, CompleteLinkage, NJ
    (default = UPGMA).'
  type: boolean?
  inputBinding:
    prefix: --clustering
- id: in_jackknife
  doc: Number of jackknife replicates to perform (default = 0).
  type: boolean?
  inputBinding:
    prefix: --jackknife
- id: in_seqs_to_draw
  doc: Number of sequence to draw for jackknife replicates.
  type: boolean?
  inputBinding:
    prefix: --seqs-to-draw
- id: in_sample_size
  doc: Print number of sequences in each sample.
  type: boolean?
  inputBinding:
    prefix: --sample-size
- id: in_calculator
  doc: Desired calculator (e.g., Bray-Curtis, Canberra).
  type: boolean?
  inputBinding:
    prefix: --calculator
- id: in_weighted
  doc: Indicates if sequence abundance data should be used.
  type: boolean?
  inputBinding:
    prefix: --weighted
- id: in_mrca
  doc: Apply 'MRCA weightings' to each branch (experimental).
  type: boolean?
  inputBinding:
    prefix: --mrca
- id: in_strict_mrca
  doc: Restrict calculator to MRCA subtree.
  type: boolean?
  inputBinding:
    prefix: --strict-mrca
- id: in_count
  doc: Use count data as opposed to relative proportions.
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_max_data_vecs
  doc: Maximum number of profiles (data vectors) to have in memory at once (default
    = 1000).
  type: boolean?
  inputBinding:
    prefix: --max-data-vecs
- id: in_all
  doc: Apply all calculators and cluster calculators at the specified threshold.
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_threshold
  doc: Correlation threshold for clustering calculators (default = 0.8).
  type: boolean?
  inputBinding:
    prefix: --threshold
- id: in_output_file
  doc: Output file for cluster of calculators (default = clusters.txt).
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_verbose
  doc: Provide additional information on program execution.
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file for cluster of calculators (default = clusters.txt).
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- ExpressBetaDiversity
