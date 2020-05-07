class: CommandLineTool
id: get_tool_performance_table.R.cwl
inputs:
- id: input_dir
  doc: Path to the directory with standardised output .tsv files from multiple methods
  type: string
  inputBinding:
    prefix: --input-dir
- id: ref_file
  doc: Path to the file with reference, "true" cell type assignments
  type: string
  inputBinding:
    prefix: --ref-file
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
- id: lab_cl_mapping
  doc: Path to serialised object containing cell label - CL terms mapping
  type: string
  inputBinding:
    prefix: --lab-cl-mapping
- id: barcode_col_ref
  doc: Name of the cell id field in reference file
  type: string
  inputBinding:
    prefix: --barcode-col-ref
- id: barcode_col_pred
  doc: Name of the cell id field in prediction file
  type: string
  inputBinding:
    prefix: --barcode-col-pred
- id: label_column_ref
  doc: Name of the label column in reference file
  type: string
  inputBinding:
    prefix: --label-column-ref
- id: label_column_pred
  doc: Name of the label column in prediction file
  type: string
  inputBinding:
    prefix: --label-column-pred
- id: semantic_sim_metric
  doc: Semantic similarity scoring method. Must be supported by Onassis package. See
    listSimilarities()$pairwiseMeasures for a list of accepted options
  type: string
  inputBinding:
    prefix: --semantic-sim-metric
- id: output_path
  doc: Path to the output table in .tsv format
  type: string
  inputBinding:
    prefix: --output-path
outputs: []
cwlVersion: v1.1
baseCommand:
- get_tool_performance_table.R
