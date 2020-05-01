#!/usr/bin/env cwl-runner

baseCommand:
- sccaf
class: CommandLineTool
cwlVersion: v1.0
id: sccaf
inputs:
- doc: Path to input in AnnData or Loom
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: Path for output file
  id: output_file
  inputBinding:
    prefix: --output-file
  type: string
- doc: Path to external clustering in TSV
  id: external_clustering_tsv
  inputBinding:
    prefix: --external-clustering-tsv
  type: string
- doc: Not only run assessment, but also optimise the clustering
  id: optimise
  inputBinding:
    prefix: --optimise
  type: boolean
- doc: If --optimise given, then this allows to optionally skip the original assessment
    of the clustering
  id: skip_assessment
  inputBinding:
    prefix: --skip-assessment
  type: boolean
- doc: Use clustering pre-computed in the input object, available in this slot of
    the object.
  id: slot_for_existing_clustering
  inputBinding:
    prefix: --slot-for-existing-clustering
  type: string
- doc: Resolution for running clustering when no internal or external clustering is
    given.
  id: resolution
  inputBinding:
    prefix: --resolution
  type: string
- doc: Accuracy threshold for convergence of the optimisation procedure.
  id: min_accuracy
  inputBinding:
    prefix: --min-accuracy
  type: long
- doc: Prefix for clustering labels
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: Number of processors to use
  id: cores
  inputBinding:
    prefix: --cores
  type: string
- doc: Label for the underclustering boundary to use in the optimisation. It should
    be present in the annData object
  id: under_cluster_boundary
  inputBinding:
    prefix: --undercluster-boundary
  type: string
- doc: Set to produce summary files for each round of optimisation
  id: produce_rounds_summary
  inputBinding:
    prefix: --produce-rounds-summary
  type: boolean
- doc: PDF file output path for all optimisation plots.
  id: optimisation_plots_output
  inputBinding:
    prefix: --optimisation-plots-output
  type: string
- doc: 'How many samples are taken of cells per clusters prior to the confusion matrix
    calculation.Higher numbers will produce more stable results in terms of rounds,
    but will take longer. Default: 3.'
  id: conf_sampling_iterations
  inputBinding:
    prefix: --conf-sampling-iterations
  type: string
