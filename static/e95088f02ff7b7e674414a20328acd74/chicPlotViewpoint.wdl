version 1.0

task ChicPlotViewpoint {
  input {
    Array[File] interaction_file
    Int? range
    File? background_model_file
    File? interaction_file_folder
    Array[String] differential_test_result
    File? significant_interaction_file_folder
    Directory? differential_test_results_folder
    Array[String] significant_interactions
    Boolean? plot_significant_interactions
    Directory? output_folder
    String? output_format
    String? dpi
    Int? bin_resolution
    String? colormap_p_value
    String? maxp_value
    Int? min_p_value
    Boolean? p_value
    Array[String] p_value_significance_levels
    String? x_fold
    Boolean? truncate_zerop_values
    File? out_filename
    Boolean? batch_mode
    String? target_file
    Int? threads
    String files_dot
    String mode_dot
  }
  command <<<
    chicPlotViewpoint \
      ~{files_dot} \
      ~{mode_dot} \
      ~{if defined(interaction_file) then ("--interactionFile " +  '"' + interaction_file + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(background_model_file) then ("--backgroundModelFile " +  '"' + background_model_file + '"') else ""} \
      ~{if defined(interaction_file_folder) then ("--interactionFileFolder " +  '"' + interaction_file_folder + '"') else ""} \
      ~{if defined(differential_test_result) then ("--differentialTestResult " +  '"' + differential_test_result + '"') else ""} \
      ~{if defined(significant_interaction_file_folder) then ("--significantInteractionFileFolder " +  '"' + significant_interaction_file_folder + '"') else ""} \
      ~{if defined(differential_test_results_folder) then ("--differentialTestResultsFolder " +  '"' + differential_test_results_folder + '"') else ""} \
      ~{if defined(significant_interactions) then ("--significantInteractions " +  '"' + significant_interactions + '"') else ""} \
      ~{if (plot_significant_interactions) then "--plotSignificantInteractions" else ""} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(output_format) then ("--outputFormat " +  '"' + output_format + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(bin_resolution) then ("--binResolution " +  '"' + bin_resolution + '"') else ""} \
      ~{if defined(colormap_p_value) then ("--colorMapPvalue " +  '"' + colormap_p_value + '"') else ""} \
      ~{if defined(maxp_value) then ("--maxPValue " +  '"' + maxp_value + '"') else ""} \
      ~{if defined(min_p_value) then ("--minPValue " +  '"' + min_p_value + '"') else ""} \
      ~{if (p_value) then "--pValue" else ""} \
      ~{if defined(p_value_significance_levels) then ("--pValueSignificanceLevels " +  '"' + p_value_significance_levels + '"') else ""} \
      ~{if defined(x_fold) then ("--xFold " +  '"' + x_fold + '"') else ""} \
      ~{if (truncate_zerop_values) then "--truncateZeroPvalues" else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if (batch_mode) then "--batchMode" else ""} \
      ~{if defined(target_file) then ("--targetFile " +  '"' + target_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    interaction_file: "path to the interaction files which should be used for\\nplotting"
    range: "RANGE   Defines the region upstream and downstream of a\\nreference point which should be included. Format is\\n--region upstream downstream, e.g.: --region 500000\\n500000 plots 500kb up- and 500kb downstream. This\\nvalue should not exceed the range used in the other\\nchic-tools."
    background_model_file: "path to the background file which should be used for\\nplotting"
    interaction_file_folder: "Folder where the interaction files are stored. Applies\\nonly for batch mode."
    differential_test_result: "Path to the H0 rejected files to highlight the regions\\nin the plot."
    significant_interaction_file_folder: "Folder where the files with detected significant\\ninteractions are stored. Applies only for batch mode."
    differential_test_results_folder: "Folder where the H0 rejected files are stored. Applies\\nonly for batch mode."
    significant_interactions: "Path to the files with detected significant\\ninteractions to highlight the regions in the plot."
    plot_significant_interactions: "Highlights the significant interactions in the plot\\nitself. If not set, only the p-values are updated"
    output_folder: "Output folder of the files."
    output_format: "Output format of the plot."
    dpi: "Optional parameter: Resolution for the image, ifoutput\\nis a raster graphics image (e.g png, jpg)"
    bin_resolution: "Resolution of the bin in genomic units. Values are set\\nas number of bases, e.g. 1000 for a 1kb, 5000 for a\\n5kb or 10000 for a 10kb resolution."
    colormap_p_value: "Color map to use for the p-value. Available values can\\nbe seen here: http://matplotlib.org/examples/color/col\\normaps_reference.html"
    maxp_value: "Maximal value for p-value. Values above this threshold\\nare set to this value."
    min_p_value: "Minimal value for p-value. Values below this threshold\\nare set to this value."
    p_value: "Plot p-values as a colorbar"
    p_value_significance_levels: "Highlight the p-values by the defined significance\\nlevels."
    x_fold: "Plot x-fold region for the mean background."
    truncate_zerop_values: "Sets all p-values which are equal to zero to one."
    out_filename: "File name to save the image. Not used in batch mode."
    batch_mode: "The given file for --interactionFile and or"
    target_file: "a list of the to be processed"
    threads: "Number of threads (uses the python multiprocessing\\nmodule)."
    files_dot: "--plotSampleNumber PLOTSAMPLENUMBER, -psn PLOTSAMPLENUMBER"
    mode_dot: "--colorList COLORLIST [COLORLIST ...], -cl COLORLIST [COLORLIST ...]"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
    File out_out_filename = "${in_out_filename}"
  }
}