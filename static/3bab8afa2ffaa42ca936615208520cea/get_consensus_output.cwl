class: CommandLineTool
id: get_consensus_output.R.cwl
inputs:
- id: input_dir
  doc: Path to the directory with standardised .tsv files from multiple methods
  type: string
  inputBinding:
    prefix: --input-dir
- id: tool_table
  doc: Path to the tool evaluation table in text format
  type: string
  inputBinding:
    prefix: --tool-table
- id: parallel
  doc: 'Boolean: Should computation be run in parallel? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --parallel
- id: num_cores
  doc: 'Number of cores to run the process on. Default: all available cores. --parallel
    must be set to "true" for this to take effect'
  type: string
  inputBinding:
    prefix: --num-cores
- id: cl_dictionary
  doc: Path to the mapping between labels and CL terms in .rds format
  type: string
  inputBinding:
    prefix: --cl-dictionary
- id: exclusions
  doc: Path to the yaml file with excluded terms. Must contain fields 'unlabelled'
    and 'trivial_terms'
  type: string
  inputBinding:
    prefix: --exclusions
- id: ontology_graph
  doc: Path to the ontology graph in .obo or .xml format
  type: string
  inputBinding:
    prefix: --ontology-graph
- id: semantic_sim_metric
  doc: Semantic similarity scoring method.  Must be supported by Onassis package.
    See listSimilarities()$pairwiseMeasures for a list of accepted options
  type: string
  inputBinding:
    prefix: --semantic-sim-metric
- id: summary_table_output_path
  doc: Path to the output table with top labels and per-cell metrics in .tsv format
  type: string
  inputBinding:
    prefix: --summary-table-output-path
- id: raw_table_output_path
  doc: Path to the output table with all labels in .tsv format
  type: string
  inputBinding:
    prefix: --raw-table-output-path
outputs: []
cwlVersion: v1.1
baseCommand:
- get_consensus_output.R
