class: CommandLineTool
id: get_consensus_output.R.cwl
inputs:
- id: in_input_dir
  doc: "Path to the directory with standardised .tsv files from multiple\nmethods"
  type: File?
  inputBinding:
    prefix: --input-dir
- id: in_tool_table
  doc: Path to the tool evaluation table in text format
  type: File?
  inputBinding:
    prefix: --tool-table
- id: in_parallel
  doc: 'Boolean: Should computation be run in parallel? Default: FALSE'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_num_cores
  doc: "Number of cores to run the process on. Default: all available cores.\n--parallel\
    \ must be set to \"true\" for this to take effect"
  type: long?
  inputBinding:
    prefix: --num-cores
- id: in_cl_dictionary
  doc: Path to the mapping between labels and CL terms in .rds format
  type: File?
  inputBinding:
    prefix: --cl-dictionary
- id: in_exclusions
  doc: "Path to the yaml file with excluded terms. Must contain fields\n'unlabelled'\
    \ and 'trivial_terms'"
  type: File?
  inputBinding:
    prefix: --exclusions
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
  doc: "Semantic similarity scoring method.\nMust be supported by Onassis package.\n\
    See listSimilarities()$pairwiseMeasures for a list of accepted\noptions. NB: if\
    \ included in combined score calculation,\nmake sure to select a metric with values\
    \ in the [0;1] range."
  type: long?
  inputBinding:
    prefix: --semantic-sim-metric
- id: in_include_sem_sim_l
  doc: "Should semantic similarity be included into combined score\ncalculation? Default:\
    \ FALSE. If setting to TRUE, note that this\nconfines the options on semantic\
    \ similarity metric\nto those with range in the [0;1] interval only."
  type: boolean?
  inputBinding:
    prefix: --include-sem-siml
- id: in_sort_by_agg_score
  doc: 'Should cells be sorted by their aggregated scores? Default: TRUE'
  type: boolean?
  inputBinding:
    prefix: --sort-by-agg-score
- id: in_true_labels
  doc: "(OPTIONAL) Path to the true labels tsv file in case tool\nperformance is evaluated.\
    \ Expected columns: cell_id, true_label, ontology_term"
  type: File?
  inputBinding:
    prefix: --true-labels
- id: in_summary_table_output_path
  doc: Path to the output table with top labels and per-cell metrics in .tsv format
  type: File?
  inputBinding:
    prefix: --summary-table-output-path
- id: in_raw_table_output_path
  doc: Path to the output table with all labels in .tsv format
  type: File?
  inputBinding:
    prefix: --raw-table-output-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_summary_table_output_path
  doc: Path to the output table with top labels and per-cell metrics in .tsv format
  type: File?
  outputBinding:
    glob: $(inputs.in_summary_table_output_path)
- id: out_raw_table_output_path
  doc: Path to the output table with all labels in .tsv format
  type: File?
  outputBinding:
    glob: $(inputs.in_raw_table_output_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cell-types-analysis:0.1.11--0
cwlVersion: v1.1
baseCommand:
- get_consensus_output.R
