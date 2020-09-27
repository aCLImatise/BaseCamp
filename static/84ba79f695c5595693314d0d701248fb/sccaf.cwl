class: CommandLineTool
id: sccaf.cwl
inputs:
- id: in_input_file
  doc: Path to input in AnnData or Loom
  type: File
  inputBinding:
    prefix: --input-file
- id: in_output_file
  doc: Path for output file
  type: File
  inputBinding:
    prefix: --output-file
- id: in_external_clustering_tsv
  doc: Path to external clustering in TSV
  type: File
  inputBinding:
    prefix: --external-clustering-tsv
- id: in_optimise
  doc: Not only run assessment, but also optimise the
  type: boolean
  inputBinding:
    prefix: --optimise
- id: in_slot_for_existing_clustering
  doc: "Use clustering pre-computed in the input object,\navailable in this slot of\
    \ the object."
  type: string
  inputBinding:
    prefix: --slot-for-existing-clustering
- id: in_resolution
  doc: "Resolution for running clustering when no internal or\nexternal clustering\
    \ is given."
  type: string
  inputBinding:
    prefix: --resolution
- id: in_min_accuracy
  doc: "Accuracy threshold for convergence of the optimisation\nprocedure."
  type: long
  inputBinding:
    prefix: --min-accuracy
- id: in_prefix
  doc: Prefix for clustering labels
  type: string
  inputBinding:
    prefix: --prefix
- id: in_cores
  doc: Number of processors to use
  type: long
  inputBinding:
    prefix: --cores
- id: in_under_cluster_boundary
  doc: "Label for the underclustering boundary to use in the\noptimisation. It should\
    \ be present in the annData\nobject"
  type: string
  inputBinding:
    prefix: --undercluster-boundary
- id: in_produce_rounds_summary
  doc: "Set to produce summary files for each round of\noptimisation"
  type: boolean
  inputBinding:
    prefix: --produce-rounds-summary
- id: in_optimisation_plots_output
  doc: PDF file output path for all optimisation plots.
  type: File
  inputBinding:
    prefix: --optimisation-plots-output
- id: in_conf_sampling_iterations
  doc: "How many samples are taken of cells per clusters prior\nto the confusion matrix\
    \ calculation.Higher numbers\nwill produce more stable results in terms of rounds,\n\
    but will take longer. Default: 3.\n"
  type: long
  inputBinding:
    prefix: --conf-sampling-iterations
- id: in_clustering
  doc: --skip-assessment     If --optimise given, then this allows to optionally
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Path for output file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_optimisation_plots_output
  doc: PDF file output path for all optimisation plots.
  type: File
  outputBinding:
    glob: $(inputs.in_optimisation_plots_output)
cwlVersion: v1.1
baseCommand:
- sccaf
