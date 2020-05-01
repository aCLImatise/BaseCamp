#!/usr/bin/env cwl-runner

baseCommand:
- sccaf-assess
class: CommandLineTool
cwlVersion: v1.0
id: sccaf-assess
inputs:
- doc: Path to input in AnnData or Loom
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: Path for output file with table of accuracy and other metrics (required if
    iterations > 1)
  id: output_table
  inputBinding:
    prefix: --output-table
  type: string
- doc: Path to external clustering in TSV
  id: external_clustering_tsv
  inputBinding:
    prefix: --external-clustering-tsv
  type: string
- doc: Use clustering pre-computed in the input object, available in this slot of
    the object.
  id: slot_for_existing_clustering
  inputBinding:
    prefix: --slot-for-existing-clustering
  type: string
- doc: Number of times to iterate the assesment to build distributions of accuracies
  id: iterations
  inputBinding:
    prefix: --iterations
  type: string
- doc: Number of processors to use
  id: cores
  inputBinding:
    prefix: --cores
  type: string
- doc: 'Use PCA components for assesment (needs to be available in the ann data )
    (default: False)'
  id: use_pc_a
  inputBinding:
    prefix: --use-pca
  type: boolean
