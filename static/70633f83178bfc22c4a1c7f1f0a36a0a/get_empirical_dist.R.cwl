class: CommandLineTool
id: get_empirical_dist.R.cwl
inputs:
- id: in_input_ref_file
  doc: Path to file with reference cell types
  type: File?
  inputBinding:
    prefix: --input-ref-file
- id: in_exclusions
  doc: "Path to the yaml file with excluded terms.\nMust contain fields 'unlabelled'\
    \ and 'trivial_terms'"
  type: File?
  inputBinding:
    prefix: --exclusions
- id: in_label_column_ref
  doc: Name of the label column in reference file
  type: File?
  inputBinding:
    prefix: --label-column-ref
- id: in_lab_cl_mapping
  doc: Path to serialised object containing cell label to CL terms mapping
  type: File?
  inputBinding:
    prefix: --lab-cl-mapping
- id: in_parallel
  doc: 'Boolean: Should computation be run in parallel? Default: FALSE'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_num_iterations
  doc: Number of sampling iterations to construct empirical distribution
  type: long?
  inputBinding:
    prefix: --num-iterations
- id: in_sample_labs
  doc: Labels sample size to infer the distribution from.
  type: long?
  inputBinding:
    prefix: --sample-labs
- id: in_num_cores
  doc: 'Number of cores to run the process on. Default: all available cores. --parallel
    must be set to "true" for this to take effect'
  type: long?
  inputBinding:
    prefix: --num-cores
- id: in_tmpdir
  doc: Cache directory path
  type: File?
  inputBinding:
    prefix: --tmpdir
- id: in_ontology_graph
  doc: "Path to the ontology graph in .obo or .xml format.\nImport link can also be\
    \ provided."
  type: File?
  inputBinding:
    prefix: --ontology-graph
- id: in_semantic_sim_metric
  doc: "Semantic similarity scoring method. Must be supported by\nOnassis package.\
    \ See listSimilarities()$pairwiseMeasures\nfor a list of accepted options. Obviously\
    \ must correspond\nto similarity metric used in other scripts."
  type: string?
  inputBinding:
    prefix: --semantic-sim-metric
- id: in_output_path
  doc: Path to the output CDF list object in .rds format
  type: File?
  inputBinding:
    prefix: --output-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: Path to the output CDF list object in .rds format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cell-types-analysis:0.1.11--0
cwlVersion: v1.1
baseCommand:
- get_empirical_dist.R
