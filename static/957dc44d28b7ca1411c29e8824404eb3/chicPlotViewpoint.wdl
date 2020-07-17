version 1.0

task ChicPlotViewpoint {
  input {
    Array[Int] interaction_file
    String? range_defines_upstream
    String? background_model_file
    Int? interaction_file_folder
    Array[String] differential_test_result
    String? significant_interaction_file_folder
    String? differential_test_results_folder
    Array[String] significant_interactions
    Boolean? plot_significant_interactions
    String? output_folder
    String? output_format
    String? dpi
    String? bin_resolution
    String? colormap_p_value
    Int? maxp_value
    Int? min_p_value
    Boolean? p_value
    Array[String] p_value_significance_levels
    String? x_fold
    Boolean? truncate_zerop_values
    String? out_filename
    Boolean? batch_mode
    String? plot_sample_number
    Array[String] color_list
    String? threads
    String var_25
  }
  command <<<
    chicPlotViewpoint \
      ~{var_25} \
      ~{if defined(interaction_file) then ("--interactionFile " +  '"' + interaction_file + '"') else ""} \
      ~{if defined(range_defines_upstream) then ("--range " +  '"' + range_defines_upstream + '"') else ""} \
      ~{if defined(background_model_file) then ("--backgroundModelFile " +  '"' + background_model_file + '"') else ""} \
      ~{if defined(interaction_file_folder) then ("--interactionFileFolder " +  '"' + interaction_file_folder + '"') else ""} \
      ~{if defined(differential_test_result) then ("--differentialTestResult " +  '"' + differential_test_result + '"') else ""} \
      ~{if defined(significant_interaction_file_folder) then ("--significantInteractionFileFolder " +  '"' + significant_interaction_file_folder + '"') else ""} \
      ~{if defined(differential_test_results_folder) then ("--differentialTestResultsFolder " +  '"' + differential_test_results_folder + '"') else ""} \
      ~{if defined(significant_interactions) then ("--significantInteractions " +  '"' + significant_interactions + '"') else ""} \
      ~{true="--plotSignificantInteractions" false="" plot_significant_interactions} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(output_format) then ("--outputFormat " +  '"' + output_format + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(bin_resolution) then ("--binResolution " +  '"' + bin_resolution + '"') else ""} \
      ~{if defined(colormap_p_value) then ("--colorMapPvalue " +  '"' + colormap_p_value + '"') else ""} \
      ~{if defined(maxp_value) then ("--maxPValue " +  '"' + maxp_value + '"') else ""} \
      ~{if defined(min_p_value) then ("--minPValue " +  '"' + min_p_value + '"') else ""} \
      ~{true="--pValue" false="" p_value} \
      ~{if defined(p_value_significance_levels) then ("--pValueSignificanceLevels " +  '"' + p_value_significance_levels + '"') else ""} \
      ~{if defined(x_fold) then ("--xFold " +  '"' + x_fold + '"') else ""} \
      ~{true="--truncateZeroPvalues" false="" truncate_zerop_values} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{true="--batchMode" false="" batch_mode} \
      ~{if defined(plot_sample_number) then ("--plotSampleNumber " +  '"' + plot_sample_number + '"') else ""} \
      ~{if defined(color_list) then ("--colorList " +  '"' + color_list + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    interaction_file: "path to the interaction files which should be used for plotting"
    range_defines_upstream: "RANGE   Defines the region upstream and downstream of a reference point which should be included. Format is --region upstream downstream, e.g.: --region 500000 500000 plots 500kb up- and 500kb downstream. This value should not exceed the range used in the other chic-tools."
    background_model_file: "path to the background file which should be used for plotting"
    interaction_file_folder: "Folder where the interaction files are stored. Applies only for batch mode."
    differential_test_result: "Path to the H0 rejected files to highlight the regions in the plot."
    significant_interaction_file_folder: "Folder where the files with detected significant interactions are stored. Applies only for batch mode."
    differential_test_results_folder: "Folder where the H0 rejected files are stored. Applies only for batch mode."
    significant_interactions: "Path to the files with detected significant interactions to highlight the regions in the plot."
    plot_significant_interactions: "Highlights the significant interactions in the plot itself. If not set, only the p-values are updated"
    output_folder: "Output folder of the files."
    output_format: "Output format of the plot."
    dpi: "Optional parameter: Resolution for the image, ifoutput is a raster graphics image (e.g png, jpg)"
    bin_resolution: "Resolution of the bin in genomic units. Values are set as number of bases, e.g. 1000 for a 1kb, 5000 for a 5kb or 10000 for a 10kb resolution."
    colormap_p_value: "Color map to use for the p-value. Available values can be seen here: http://matplotlib.org/examples/color/col ormaps_reference.html"
    maxp_value: "Maximal value for p-value. Values above this threshold are set to this value."
    min_p_value: "Minimal value for p-value. Values below this threshold are set to this value."
    p_value: "Plot p-values as a colorbar"
    p_value_significance_levels: "Highlight the p-values by the defined significance levels."
    x_fold: "Plot x-fold region for the mean background."
    truncate_zerop_values: "Sets all p-values which are equal to zero to one."
    out_filename: "File name to save the image. Not used in batch mode."
    batch_mode: "The given file for --interactionFile and or --targetFile contain a list of the to be processed files."
    plot_sample_number: "Number of samples per plot. Applies only in batch mode."
    color_list: "Colorlist for the viewpoint lines."
    threads: "Number of threads (uses the python multiprocessing module)."
    var_25: ""
  }
}