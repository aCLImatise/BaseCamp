version 1.0

task Sccaf {
  input {
    File? input_file
    File? output_file
    File? external_clustering_tsv
    Boolean? optimise
    String? slot_for_existing_clustering
    String? resolution
    Int? min_accuracy
    String? prefix
    Int? cores
    String? under_cluster_boundary
    Boolean? produce_rounds_summary
    File? optimisation_plots_output
    Int? conf_sampling_iterations
    String clustering
  }
  command <<<
    sccaf \
      ~{clustering} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(external_clustering_tsv) then ("--external-clustering-tsv " +  '"' + external_clustering_tsv + '"') else ""} \
      ~{if (optimise) then "--optimise" else ""} \
      ~{if defined(slot_for_existing_clustering) then ("--slot-for-existing-clustering " +  '"' + slot_for_existing_clustering + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(min_accuracy) then ("--min-accuracy " +  '"' + min_accuracy + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(under_cluster_boundary) then ("--undercluster-boundary " +  '"' + under_cluster_boundary + '"') else ""} \
      ~{if (produce_rounds_summary) then "--produce-rounds-summary" else ""} \
      ~{if defined(optimisation_plots_output) then ("--optimisation-plots-output " +  '"' + optimisation_plots_output + '"') else ""} \
      ~{if defined(conf_sampling_iterations) then ("--conf-sampling-iterations " +  '"' + conf_sampling_iterations + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Path to input in AnnData or Loom"
    output_file: "Path for output file"
    external_clustering_tsv: "Path to external clustering in TSV"
    optimise: "Not only run assessment, but also optimise the"
    slot_for_existing_clustering: "Use clustering pre-computed in the input object,\\navailable in this slot of the object."
    resolution: "Resolution for running clustering when no internal or\\nexternal clustering is given."
    min_accuracy: "Accuracy threshold for convergence of the optimisation\\nprocedure."
    prefix: "Prefix for clustering labels"
    cores: "Number of processors to use"
    under_cluster_boundary: "Label for the underclustering boundary to use in the\\noptimisation. It should be present in the annData\\nobject"
    produce_rounds_summary: "Set to produce summary files for each round of\\noptimisation"
    optimisation_plots_output: "PDF file output path for all optimisation plots."
    conf_sampling_iterations: "How many samples are taken of cells per clusters prior\\nto the confusion matrix calculation.Higher numbers\\nwill produce more stable results in terms of rounds,\\nbut will take longer. Default: 3.\\n"
    clustering: "--skip-assessment     If --optimise given, then this allows to optionally"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_optimisation_plots_output = "${in_optimisation_plots_output}"
  }
}