version 1.0

task ChicSignificantInteractions {
  input {
    File? background_model_file
    String? x_fold_background
    String? loose_p_value
    Array[File] interaction_file
    String? p_value
    Int? range
    File? out_filename_suffix
    File? interaction_file_folder
    Directory? target_folder
    Directory? output_folder
    File? write_filenames_to_file
  }
  command <<<
    chicSignificantInteractions \
      ~{if defined(background_model_file) then ("--backgroundModelFile " +  '"' + background_model_file + '"') else ""} \
      ~{if defined(x_fold_background) then ("--xFoldBackground " +  '"' + x_fold_background + '"') else ""} \
      ~{if defined(loose_p_value) then ("--loosePValue " +  '"' + loose_p_value + '"') else ""} \
      ~{if defined(interaction_file) then ("--interactionFile " +  '"' + interaction_file + '"') else ""} \
      ~{if defined(p_value) then ("--pValue " +  '"' + p_value + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(out_filename_suffix) then ("--outFileNameSuffix " +  '"' + out_filename_suffix + '"') else ""} \
      ~{if defined(interaction_file_folder) then ("--interactionFileFolder " +  '"' + interaction_file_folder + '"') else ""} \
      ~{if defined(target_folder) then ("--targetFolder " +  '"' + target_folder + '"') else ""} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(write_filenames_to_file) then ("--writeFileNamesToFile " +  '"' + write_filenames_to_file + '"') else ""}
  >>>
  parameter_meta {
    background_model_file: "path to the background file which is necessary to\\ncompute the rbz-score"
    x_fold_background: "Filter x-fold over background. Used to merge\\nneighboring bins with a broader peak but less\\nsignificant interactions to a single peak with high\\nsignificance. Used only for pValue option."
    loose_p_value: "loose p-value threshold to filter target regions in a\\nfirst round. Used to merge neighboring bins with a\\nbroader peak but less significant interactions to a\\nsingle peak with high significance. Used only for\\npValue option."
    interaction_file: "path to the interaction files which should be used for\\naggregation of the statistics."
    p_value: "p-value threshold to filter target regions for\\ninclusion in differential analysis."
    range: "RANGE   Defines the region upstream and downstream of a\\nreference point which should be included. Format is\\n--region upstream downstream, e.g. --region 500000\\n500000 plots 500kb up- and 500kb downstream. This\\nvalue should not exceed the range used in the other\\nchic-tools."
    out_filename_suffix: "File name suffix to save the results; prefix is the\\ninput file name."
    interaction_file_folder: "Folder where the interaction files are stored. Applies\\nonly for batch mode."
    target_folder: "Folder where the target files are stored."
    output_folder: "Output folder of the significant interaction files."
    write_filenames_to_file: "--targetFileList TARGETFILELIST, -tl TARGETFILELIST\\nThe file to store the target file names.\\n--batchMode, -bm      Turn on batch mode. The given file for\\n--interactionFile and or --targetFile contain a list\\nof the to be processed files.\\n--threads THREADS, -t THREADS\\nNumber of threads (uses the python multiprocessing\\nmodule).\\n--truncateZeroPvalues, -tzpv\\nSets all p-values which are equal to zero to one. This\\nhas the effect that the associated positions are not\\npart of the significance decision.\\n--fixateRange FIXATERANGE, -fs FIXATERANGE\\nFixate range of backgroundmodel starting at distance\\nx. E.g. all values greater than 500kb are set to the\\nvalue of the 500kb bin.\\n--peakInteractionsThreshold PEAKINTERACTIONSTHRESHOLD, -pit PEAKINTERACTIONSTHRESHOLD\\nThe minimum number of interactions a detected peak\\nneeds to have to be considered.\\n--resolution RESOLUTION, -r RESOLUTION\\nResolution of the bin in genomic units. Values are set\\nas number of bases, e.g. 1000 for a 1kb, 5000 for a\\n5kb or 10000 for a 10kb resolution.This value is used\\nto merge neighboring bins.\\n--computeSampleNumber COMPUTESAMPLENUMBER, -csn COMPUTESAMPLENUMBER\\nNumber of samples to compute together. Applies only in\\nbatch mode.\\n--multipleTesting {fdr,bonferroni,None}, -mt {fdr,bonferroni,None}\\nMultiple testing correction per relative distance with\\nBonferroni or FDR.\\n--thresholdMultipleTesting THRESHOLDMULTIPLETESTING, -tmt THRESHOLDMULTIPLETESTING\\nThreshold for Bonferroni / FDR. Either a float value\\nfor all or a file with one threshold per relative\\ndistance.\\n--help, -h            show this help message and exit\\n--version             show program's version number and exit\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename_suffix = "${in_out_filename_suffix}"
    Directory out_output_folder = "${in_output_folder}"
  }
}