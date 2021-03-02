version 1.0

task ChicSignificantInteractions {
  input {
    File? background_model_file
    String? x_fold_background
    String? loose_p_value
    Array[File] interaction_file
    String? p_value
    File? out_filename_suffix
    File? interaction_file_folder
    Directory? target_folder
    Directory? output_folder
    File? write_filenames_to_file
    File? target_file_list
    Boolean? batch_mode
    Int? threads
    Boolean? truncate_zerop_values
    Int? fixate_range
    Int? peak_interactions_threshold
    Int? resolution
    Int? compute_sample_number
    String? multiple_testing
    Float? threshold_multiple_testing
  }
  command <<<
    chicSignificantInteractions \
      ~{if defined(background_model_file) then ("--backgroundModelFile " +  '"' + background_model_file + '"') else ""} \
      ~{if defined(x_fold_background) then ("--xFoldBackground " +  '"' + x_fold_background + '"') else ""} \
      ~{if defined(loose_p_value) then ("--loosePValue " +  '"' + loose_p_value + '"') else ""} \
      ~{if defined(interaction_file) then ("--interactionFile " +  '"' + interaction_file + '"') else ""} \
      ~{if defined(p_value) then ("--pValue " +  '"' + p_value + '"') else ""} \
      ~{if defined(out_filename_suffix) then ("--outFileNameSuffix " +  '"' + out_filename_suffix + '"') else ""} \
      ~{if defined(interaction_file_folder) then ("--interactionFileFolder " +  '"' + interaction_file_folder + '"') else ""} \
      ~{if defined(target_folder) then ("--targetFolder " +  '"' + target_folder + '"') else ""} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(write_filenames_to_file) then ("--writeFileNamesToFile " +  '"' + write_filenames_to_file + '"') else ""} \
      ~{if defined(target_file_list) then ("--targetFileList " +  '"' + target_file_list + '"') else ""} \
      ~{if (batch_mode) then "--batchMode" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (truncate_zerop_values) then "--truncateZeroPvalues" else ""} \
      ~{if defined(fixate_range) then ("--fixateRange " +  '"' + fixate_range + '"') else ""} \
      ~{if defined(peak_interactions_threshold) then ("--peakInteractionsThreshold " +  '"' + peak_interactions_threshold + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(compute_sample_number) then ("--computeSampleNumber " +  '"' + compute_sample_number + '"') else ""} \
      ~{if defined(multiple_testing) then ("--multipleTesting " +  '"' + multiple_testing + '"') else ""} \
      ~{if defined(threshold_multiple_testing) then ("--thresholdMultipleTesting " +  '"' + threshold_multiple_testing + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    background_model_file: "path to the background file which is necessary to\\ncompute the rbz-score"
    x_fold_background: "Filter x-fold over background. Used to merge\\nneighboring bins with a broader peak but less\\nsignificant interactions to a single peak with high\\nsignificance. Used only for pValue option."
    loose_p_value: "loose p-value threshold to filter target regions in a\\nfirst round. Used to merge neighboring bins with a\\nbroader peak but less significant interactions to a\\nsingle peak with high significance. Used only for\\npValue option."
    interaction_file: "path to the interaction files which should be used for\\naggregation of the statistics."
    p_value: "p-value threshold to filter target regions for\\ninclusion in differential analysis."
    out_filename_suffix: "File name suffix to save the results; prefix is the\\ninput file name (Default:\\n_significant_interactions.txt)."
    interaction_file_folder: "Folder where the interaction files are stored. Applies\\nonly for batch mode (Default: .)."
    target_folder: "Folder where the target files are stored (Default:\\ntargetFolder)."
    output_folder: "Output folder of the significant interaction files\\n(Default: significantFiles)."
    write_filenames_to_file: "(Default: significantFilesBatch.txt)."
    target_file_list: "The file to store the target file names (Default:\\ntargetList.txt)."
    batch_mode: "Turn on batch mode. The given file for"
    threads: "Number of threads (uses the python multiprocessing\\nmodule) (Default: 4)."
    truncate_zerop_values: "Sets all p-values which are equal to zero to one. This\\nhas the effect that the associated positions are not\\npart of the significance decision."
    fixate_range: "Fixate range of backgroundmodel starting at distance\\nx. E.g. all values greater than 500kb are set to the\\nvalue of the 500kb bin (Default: 500000)."
    peak_interactions_threshold: "The minimum number of interactions a detected peak\\nneeds to have to be considered (Default: 5)."
    resolution: "Resolution of the bin in genomic units. Values are set\\nas number of bases, e.g. 1000 for a 1kb, 5000 for a\\n5kb or 10000 for a 10kb resolution.This value is used\\nto merge neighboring bins (Default: 1000)."
    compute_sample_number: "Number of samples to compute together. Applies only in\\nbatch mode (Default: 2)."
    multiple_testing: "Multiple testing correction per relative distance with\\nBonferroni or FDR (Default: None)."
    threshold_multiple_testing: "Threshold for Bonferroni / FDR. Either a float value\\nfor all or a file with one threshold per relative\\ndistance."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename_suffix = "${in_out_filename_suffix}"
    Directory out_output_folder = "${in_output_folder}"
  }
}