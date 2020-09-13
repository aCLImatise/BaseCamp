version 1.0

task PredictTraitspy {
  input {
    Boolean? verbose
    File? output_trait_table
    File? calculate_accuracy_metrics
    File? output_accuracy_metrics_only
    String? prediction_method
    Int? weighting_method
    File? limit_predictions_by_otu_table
    Int? limit_predictions_to_organisms
    String? reconstructed_trait_table
    File? confidence_format
    String? reconstruction_confidence
    File? output_pre_calc_file_in_biom
    Boolean? no_round
    String? observed_trait_table
    String? tree
    Int one_dot
    Int two_dot
  }
  command <<<
    predict_traits_py \
      ~{one_dot} \
      ~{two_dot} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(output_trait_table) then ("--output_trait_table " +  '"' + output_trait_table + '"') else ""} \
      ~{if (calculate_accuracy_metrics) then "--calculate_accuracy_metrics" else ""} \
      ~{if defined(output_accuracy_metrics_only) then ("--output_accuracy_metrics_only " +  '"' + output_accuracy_metrics_only + '"') else ""} \
      ~{if defined(prediction_method) then ("--prediction_method " +  '"' + prediction_method + '"') else ""} \
      ~{if defined(weighting_method) then ("--weighting_method " +  '"' + weighting_method + '"') else ""} \
      ~{if defined(limit_predictions_by_otu_table) then ("--limit_predictions_by_otu_table " +  '"' + limit_predictions_by_otu_table + '"') else ""} \
      ~{if defined(limit_predictions_to_organisms) then ("--limit_predictions_to_organisms " +  '"' + limit_predictions_to_organisms + '"') else ""} \
      ~{if defined(reconstructed_trait_table) then ("--reconstructed_trait_table " +  '"' + reconstructed_trait_table + '"') else ""} \
      ~{if defined(confidence_format) then ("--confidence_format " +  '"' + confidence_format + '"') else ""} \
      ~{if defined(reconstruction_confidence) then ("--reconstruction_confidence " +  '"' + reconstruction_confidence + '"') else ""} \
      ~{if (output_pre_calc_file_in_biom) then "--output_precalc_file_in_biom" else ""} \
      ~{if (no_round) then "--no_round" else ""} \
      ~{if defined(observed_trait_table) then ("--observed_trait_table " +  '"' + observed_trait_table + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    output_trait_table: "the output filepath for trait predictions [default:\\npredicted_states.tsv]"
    calculate_accuracy_metrics: "if specified, calculate accuracy metrics (i.e. how\\naccurate does PICRUSt expect its predictions to be?)\\nand add to output file [default: False]"
    output_accuracy_metrics_only: "if specified, calculate accuracy metrics (e.g. NSTI),\\noutput them to this filepath, and do not do anything\\nelse. [default: none]"
    prediction_method: "Specify prediction method to use.  The recommended\\nprediction method is set as default, so other options\\nare primarily useful for control experiments and\\nmethods validation, not typical use.  Valid choices ar\\ne:asr_and_weighting,nearest_neighbor,asr_only,weightin\\ng_only,random_neighbor.\\n\\\"asr_and_weighting\\\"(recommended): use ancestral state\\nreconstructions plus local weighting with known tip\\nnodes.  \\\"nearest_neighbor\\\": predict the closest tip on\\nthe tree with trait information.\\n\\\"random_annotated_neighbor\\\": predict a random tip on\\nthe tree with trait information. \\\"asr_only\\\": predict\\nthe traits of the last reconstructed ancestor, without\\nweighting. \\\"weighting_only\\\": weight all genomes by\\ndistance, to the organism of interest using the\\nspecified weighting function and predict the weighted\\naverage.   [default: asr_and_weighting]"
    weighting_method: "Specify prediction the weighting function to use.\\nThis only applies to prediction methods that\\nincorporate local weighting (\\\"asr_and_weighting\\\" or\\n\\\"weighting_only\\\")  The recommended weighting  method\\nis set as default, so other options are primarily\\nuseful for control experiments and methods validation,\\nnot typical use.  Valid choices\\nare:exponential,linear,equal.\\n\\\"exponential\\\"(recommended): weight genomes as a\\nnegative exponent of distance.  That is 2^-d, where d\\nis the tip-to-tip distance from the genome to the tip.\\n\\\"linear\\\": weight tips as a linear function of weight,\\nnormalized to the maximum possible distance (max_d\\n-d)/d. \\\"equal_weights\\\": set all weights to a constant\\n(ignoring branch length).   [default: exponential]"
    limit_predictions_by_otu_table: "Specify a valid path to a legacy QIIME OTU table to\\nperform predictions only for tips that are listed in\\nthe OTU table (regardless of abundance)"
    limit_predictions_to_organisms: "Limit predictions to specific, comma-separated\\norganims ids. (Generally only useful for lists of < 10\\norganism ids, for example when performing leave-one-\\nout cross-validation)."
    reconstructed_trait_table: "the input trait table describing reconstructed traits\\n(from ancestral_state_reconstruction.py) in tab-\\ndelimited format [default: none]"
    confidence_format: "the format for the confidence intervals from ancestral\\nstate reconstruction. Only needed if passing a\\nreconstruction confidence file with -c or\\n--reconstruction_confidence.  These are typically\\nsigma values for maximum likelihood ASR  methods, but\\n95% confidence intervals for phylogenetic independent\\ncontrasts (e.g. from the ape R packages ace function\\nwith pic as the reconstruction method).  Valid choices\\nare:sigma,confidence_interval. [default: sigma]"
    reconstruction_confidence: "the input trait table describing confidence intervals\\nfor reconstructed traits (from\\nancestral_state_reconstruction.py) in tab-delimited\\nformat [default: none]"
    output_pre_calc_file_in_biom: "Instead of outputting the precalculated file in tab-\\ndelimited format (with otu ids as row ids and traits\\nas columns) output the data in biom format (with otu\\nas SampleIds and traits as ObservationIds) [default:\\nFalse]"
    no_round: "Flag to set if you do not want predictions to be\\nrounded to the nearest integer [default: False]"
    observed_trait_table: "the input trait table describing directly observed\\ntraits (e.g. sequenced genomes) in tab-delimited\\nformat [REQUIRED]"
    tree: "the full reference tree, in Newick format [REQUIRED]\\n"
    one_dot: "For each terminal (tip) node where a prediction is to be performed, the algorithm through the reconstructed ancestral states, and finds the last node in the ancestry of our organism of interest for which a prediction is available"
    two_dot: "The trait for the organism is then predicted based on a branch-length weighted average of the ancestral node and it's close relatives. (This is necessary because technical limitations involving the handling of ambiguous characters in many Ancestral State Reconstruction programs prevent the parent node of the organism from being directly reconstructed in most cases.)"
  }
  output {
    File out_stdout = stdout()
    File out_output_trait_table = "${in_output_trait_table}"
    File out_calculate_accuracy_metrics = "${in_calculate_accuracy_metrics}"
    File out_output_accuracy_metrics_only = "${in_output_accuracy_metrics_only}"
    File out_output_pre_calc_file_in_biom = "${in_output_pre_calc_file_in_biom}"
  }
}