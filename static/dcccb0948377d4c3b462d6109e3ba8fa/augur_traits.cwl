class: CommandLineTool
id: augur_traits.cwl
inputs:
- id: in_tree
  doc: "tree to perform trait reconstruction on (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --tree
- id: in_metadata
  doc: 'table with metadata, as CSV or TSV (default: None)'
  type: File?
  inputBinding:
    prefix: --metadata
- id: in_weights
  doc: "tsv/csv table with equilibrium probabilities of\ndiscrete states (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --weights
- id: in_columns
  doc: "metadata fields to perform discrete reconstruction on\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --columns
- id: in_confidence
  doc: "record the distribution of subleading mugration states\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --confidence
- id: in_sampling_bias_correction
  doc: "a rough estimate of how many more events would have\nbeen observed if sequences\
    \ represented an even sample.\nThis should be roughly the (1-sum_i p_i^2)/(1-sum_i\n\
    t_i^2), where p_i are the equilibrium frequencies and\nt_i are apparent ones.(or\
    \ rather the time spent in a\nparticular state on the tree) (default: None)"
  type: long?
  inputBinding:
    prefix: --sampling-bias-correction
- id: in_output_node_data
  doc: "name of JSON file to save trait inferences to\n(default: None)"
  type: File?
  inputBinding:
    prefix: --output-node-data
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:11.1.2--py_1
cwlVersion: v1.1
baseCommand:
- augur
- traits
