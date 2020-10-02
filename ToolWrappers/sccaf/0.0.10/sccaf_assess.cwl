class: CommandLineTool
id: sccaf_assess.cwl
inputs:
- id: in_input_file
  doc: Path to input in AnnData or Loom
  type: File
  inputBinding:
    prefix: --input-file
- id: in_output_table
  doc: "Path for output file with table of accuracy and other\nmetrics (required if\
    \ iterations > 1)"
  type: File
  inputBinding:
    prefix: --output-table
- id: in_external_clustering_tsv
  doc: Path to external clustering in TSV
  type: File
  inputBinding:
    prefix: --external-clustering-tsv
- id: in_slot_for_existing_clustering
  doc: "Use clustering pre-computed in the input object,\navailable in this slot of\
    \ the object."
  type: string
  inputBinding:
    prefix: --slot-for-existing-clustering
- id: in_iterations
  doc: "Number of times to iterate the assesment to build\ndistributions of accuracies"
  type: long
  inputBinding:
    prefix: --iterations
- id: in_cores
  doc: Number of processors to use
  type: long
  inputBinding:
    prefix: --cores
- id: in_use_pc_a
  doc: "Use PCA components for assesment (needs to be\navailable in the ann data )\
    \ (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --use-pca
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_table
  doc: "Path for output file with table of accuracy and other\nmetrics (required if\
    \ iterations > 1)"
  type: File
  outputBinding:
    glob: $(inputs.in_output_table)
cwlVersion: v1.1
baseCommand:
- sccaf-assess
