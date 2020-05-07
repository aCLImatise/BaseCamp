class: CommandLineTool
id: sccaf_assess.cwl
inputs:
- id: input_file
  doc: Path to input in AnnData or Loom
  type: string
  inputBinding:
    prefix: --input-file
- id: output_table
  doc: Path for output file with table of accuracy and other metrics (required if
    iterations > 1)
  type: string
  inputBinding:
    prefix: --output-table
- id: external_clustering_tsv
  doc: Path to external clustering in TSV
  type: string
  inputBinding:
    prefix: --external-clustering-tsv
- id: slot_for_existing_clustering
  doc: Use clustering pre-computed in the input object, available in this slot of
    the object.
  type: string
  inputBinding:
    prefix: --slot-for-existing-clustering
- id: iterations
  doc: Number of times to iterate the assesment to build distributions of accuracies
  type: string
  inputBinding:
    prefix: --iterations
- id: cores
  doc: Number of processors to use
  type: string
  inputBinding:
    prefix: --cores
- id: use_pc_a
  doc: 'Use PCA components for assesment (needs to be available in the ann data )
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --use-pca
outputs: []
cwlVersion: v1.1
baseCommand:
- sccaf-assess
