class: CommandLineTool
id: sccaf.cwl
inputs:
- id: input_file
  doc: Path to input in AnnData or Loom
  type: string
  inputBinding:
    prefix: --input-file
- id: output_file
  doc: Path for output file
  type: string
  inputBinding:
    prefix: --output-file
- id: external_clustering_tsv
  doc: Path to external clustering in TSV
  type: string
  inputBinding:
    prefix: --external-clustering-tsv
- id: optimise
  doc: Not only run assessment, but also optimise the clustering
  type: boolean
  inputBinding:
    prefix: --optimise
- id: skip_assessment
  doc: If --optimise given, then this allows to optionally skip the original assessment
    of the clustering
  type: boolean
  inputBinding:
    prefix: --skip-assessment
- id: slot_for_existing_clustering
  doc: Use clustering pre-computed in the input object, available in this slot of
    the object.
  type: string
  inputBinding:
    prefix: --slot-for-existing-clustering
- id: resolution
  doc: Resolution for running clustering when no internal or external clustering is
    given.
  type: string
  inputBinding:
    prefix: --resolution
- id: min_accuracy
  doc: Accuracy threshold for convergence of the optimisation procedure.
  type: long
  inputBinding:
    prefix: --min-accuracy
- id: prefix
  doc: Prefix for clustering labels
  type: string
  inputBinding:
    prefix: --prefix
- id: cores
  doc: Number of processors to use
  type: string
  inputBinding:
    prefix: --cores
- id: under_cluster_boundary
  doc: Label for the underclustering boundary to use in the optimisation. It should
    be present in the annData object
  type: string
  inputBinding:
    prefix: --undercluster-boundary
- id: produce_rounds_summary
  doc: Set to produce summary files for each round of optimisation
  type: boolean
  inputBinding:
    prefix: --produce-rounds-summary
- id: optimisation_plots_output
  doc: PDF file output path for all optimisation plots.
  type: string
  inputBinding:
    prefix: --optimisation-plots-output
- id: conf_sampling_iterations
  doc: 'How many samples are taken of cells per clusters prior to the confusion matrix
    calculation.Higher numbers will produce more stable results in terms of rounds,
    but will take longer. Default: 3.'
  type: string
  inputBinding:
    prefix: --conf-sampling-iterations
outputs: []
cwlVersion: v1.1
baseCommand:
- sccaf
