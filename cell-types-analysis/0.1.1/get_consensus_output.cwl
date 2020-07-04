class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/get_consensus_output.R.cwl
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
- id: tmpdir
  doc: Cache directory path
  type: string
  inputBinding:
    prefix: --tmpdir
- id: ontology_graph
  doc: Path to the ontology graph in .obo or .xml format. Import link can also be
    provided.
  type: string
  inputBinding:
    prefix: --ontology-graph
- id: semantic_sim_metric
  doc: 'Semantic similarity scoring method.  Must be supported by Onassis package.
    See listSimilarities()$pairwiseMeasures for a list of accepted options. NB: if
    included in combined score calculation, make sure to select a metric with values
    in the [0;1] range.'
  type: string
  inputBinding:
    prefix: --semantic-sim-metric
- id: include_sem_sim_l
  doc: 'Should semantic similarity be included into combined score calculation? Default:
    FALSE. If setting to TRUE, note that this confines the options on semantic similarity
    metric to those with range in the [0;1] interval only.'
  type: boolean
  inputBinding:
    prefix: --include-sem-siml
- id: sort_by_agg_score
  doc: 'Should cells be sorted by their aggregated scores? Default: TRUE'
  type: boolean
  inputBinding:
    prefix: --sort-by-agg-score
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
