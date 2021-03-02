class: CommandLineTool
id: get_tool_performance_table.R.cwl
inputs:
- id: in_input_dir
  doc: "Path to the directory with standardised output .tsv files from multiple\n\
    methods"
  type: File?
  inputBinding:
    prefix: --input-dir
- id: in_ref_file
  doc: Path to the file with reference, "true" cell type assignments
  type: File?
  inputBinding:
    prefix: --ref-file
- id: in_parallel
  doc: 'Boolean: Should computation be run in parallel? Default: FALSE'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_num_cores
  doc: 'Number of cores to run the process on. Default: all available cores. --parallel
    must be set to "true" for this to take effect'
  type: long?
  inputBinding:
    prefix: --num-cores
- id: in_exclusions
  doc: Path to the yaml file with excluded terms. Must contain fields 'unlabelled'
    and 'trivial_terms'
  type: File?
  inputBinding:
    prefix: --exclusions
- id: in_tmpdir
  doc: Cache directory path
  type: File?
  inputBinding:
    prefix: --tmpdir
- id: in_ontology_graph
  doc: Path to the ontology graph in .obo or .xml format. Import link can also be
    provided.
  type: File?
  inputBinding:
    prefix: --ontology-graph
- id: in_lab_cl_mapping
  doc: Path to serialised object containing cell label - CL terms mapping
  type: File?
  inputBinding:
    prefix: --lab-cl-mapping
- id: in_barcode_col_ref
  doc: Name of the cell id field in reference file
  type: File?
  inputBinding:
    prefix: --barcode-col-ref
- id: in_barcode_col_pred
  doc: Name of the cell id field in prediction file
  type: File?
  inputBinding:
    prefix: --barcode-col-pred
- id: in_label_column_ref
  doc: Name of the label column in reference file
  type: File?
  inputBinding:
    prefix: --label-column-ref
- id: in_label_column_pred
  doc: Name of the label column in prediction file
  type: File?
  inputBinding:
    prefix: --label-column-pred
- id: in_semantic_sim_metric
  doc: "Semantic similarity scoring method. Must be supported by Onassis\npackage.\
    \ See listSimilarities()$pairwiseMeasures for a list\nof accepted options.\nNB:\
    \ if included in combined score calculation, make sure to select a metric with\
    \ values in the [0;1] range."
  type: long?
  inputBinding:
    prefix: --semantic-sim-metric
- id: in_include_sem_sim_l
  doc: "Should semantic similarity be included into combined score calculation? Default:\
    \ FALSE.\nIf setting to TRUE, note that this confines the options on semantic\
    \ similarity metric\nto those with range in the [0;1] interval only."
  type: boolean?
  inputBinding:
    prefix: --include-sem-siml
- id: in_output_path
  doc: Path to the output table in .tsv format
  type: File?
  inputBinding:
    prefix: --output-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input_dir
  doc: "Path to the directory with standardised output .tsv files from multiple\n\
    methods"
  type: File?
  outputBinding:
    glob: $(inputs.in_input_dir)
- id: out_output_path
  doc: Path to the output table in .tsv format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints: []
cwlVersion: v1.1
baseCommand:
- get_tool_performance_table.R
