version 1.0

task ChicSignificantInteractions {
  input {
    String? x_fold_background
    String? loose_p_value
    Array[Int] interaction_file
    String? p_value
    String? background_model_file
    String? range
    String? target_file_list
    Boolean? batch_mode
    String? threads
    Boolean? truncate_zerop_values
    String? fixate_range
    String? peak_interactions_threshold
    String? resolution
    String? compute_sample_number
  }
  command <<<
    chicSignificantInteractions \
      ~{if defined(x_fold_background) then ("--xFoldBackground " +  '"' + x_fold_background + '"') else ""} \
      ~{if defined(loose_p_value) then ("--loosePValue " +  '"' + loose_p_value + '"') else ""} \
      ~{if defined(interaction_file) then ("--interactionFile " +  '"' + interaction_file + '"') else ""} \
      ~{if defined(p_value) then ("--pValue " +  '"' + p_value + '"') else ""} \
      ~{if defined(background_model_file) then ("--backgroundModelFile " +  '"' + background_model_file + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(target_file_list) then ("--targetFileList " +  '"' + target_file_list + '"') else ""} \
      ~{true="--batchMode" false="" batch_mode} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--truncateZeroPvalues" false="" truncate_zerop_values} \
      ~{if defined(fixate_range) then ("--fixateRange " +  '"' + fixate_range + '"') else ""} \
      ~{if defined(peak_interactions_threshold) then ("--peakInteractionsThreshold " +  '"' + peak_interactions_threshold + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(compute_sample_number) then ("--computeSampleNumber " +  '"' + compute_sample_number + '"') else ""}
  >>>
  parameter_meta {
    x_fold_background: "Filter x-fold over background. Used to merge neighboring bins with a broader peak but less significant interactions to a single peak with high significance. Used only for pValue option."
    loose_p_value: "loose p-value threshold to filter target regions in a first round. Used to merge neighboring bins with a broader peak but less significant interactions to a single peak with high significance. Used only for pValue option."
    interaction_file: "path to the interaction files which should be used for aggregation of the statistics."
    p_value: "p-value threshold to filter target regions for inclusion in differential analysis."
    background_model_file: "path to the background file which is necessary to compute the rbz-score"
    range: "RANGE   Defines the region upstream and downstream of a reference point which should be included. Format is --region upstream downstream, e.g. --region 500000 500000 plots 500kb up- and 500kb downstream. This value should not exceed the range used in the other chic-tools."
    target_file_list: "The file to store the target file names."
    batch_mode: "Turn on batch mode. The given file for --interactionFile and or --targetFile contain a list of the to be processed files."
    threads: "Number of threads (uses the python multiprocessing module)."
    truncate_zerop_values: "Sets all p-values which are equal to zero to one. This has the effect that the associated positions are not part of the significance decision."
    fixate_range: "Fixate range of backgroundmodel starting at distance x. E.g. all values greater than 500kb are set to the value of the 500kb bin."
    peak_interactions_threshold: "The minimum number of interactions a detected peak needs to have to be considered."
    resolution: "Resolution of the bin in genomic units. Values are set as number of bases, e.g. 1000 for a 1kb, 5000 for a 5kb or 10000 for a 10kb resolution.This value is used to merge neighboring bins."
    compute_sample_number: "Number of samples to compute together. Applies only in batch mode."
  }
}