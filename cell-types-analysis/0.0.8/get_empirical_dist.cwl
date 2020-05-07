class: CommandLineTool
id: get_empirical_dist.R.cwl
inputs:
- id: input_ref_file
  doc: Path to file with reference cell types
  type: string
  inputBinding:
    prefix: --input-ref-file
- id: exclusions
  doc: Path to the yaml file with excluded terms. Must contain fields 'unlabelled'
    and 'trivial_terms'
  type: string
  inputBinding:
    prefix: --exclusions
- id: label_column_ref
  doc: Name of the label column in reference file
  type: string
  inputBinding:
    prefix: --label-column-ref
- id: lab_cl_mapping
  doc: Path to serialised object containing cell label to CL terms mapping
  type: string
  inputBinding:
    prefix: --lab-cl-mapping
- id: parallel
  doc: 'Boolean: Should computation be run in parallel? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --parallel
- id: num_iterations
  doc: Number of sampling iterations to construct empirical distribution
  type: string
  inputBinding:
    prefix: --num-iterations
- id: num_cores
  doc: 'Number of cores to run the process on. Default: all available cores. --parallel
    must be set to "true" for this to take effect'
  type: string
  inputBinding:
    prefix: --num-cores
- id: ontology_graph
  doc: Path to the ontology graph in .obo or .xml format
  type: string
  inputBinding:
    prefix: --ontology-graph
- id: semantic_sim_metric
  doc: Semantic similarity scoring method. Must be supported by Onassis package. See
    listSimilarities()$pairwiseMeasures for a list of accepted options
  type: string
  inputBinding:
    prefix: --semantic-sim-metric
- id: output_path
  doc: Path to the output CDF list object in .rds format
  type: string
  inputBinding:
    prefix: --output-path
outputs: []
cwlVersion: v1.1
baseCommand:
- get_empirical_dist.R
