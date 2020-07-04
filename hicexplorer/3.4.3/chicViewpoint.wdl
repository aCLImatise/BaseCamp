version 1.0

task ChicViewpoint {
  input {
    Array[String] matrices
    String? range_defines_region
    String? reference_points
    String? background_model_file
    String? threads
    String? average_contact_bin
    Float? decimal_places
    String? write_filenames_to_file
    String? fixate_range
    Boolean? all_viewpoints_list
    String? output_folder
    String var_11
  }
  command <<<
    chicViewpoint \
      ~{var_11} \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(range_defines_region) then ("--range " +  '"' + range_defines_region + '"') else ""} \
      ~{if defined(reference_points) then ("--referencePoints " +  '"' + reference_points + '"') else ""} \
      ~{if defined(background_model_file) then ("--backgroundModelFile " +  '"' + background_model_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(average_contact_bin) then ("--averageContactBin " +  '"' + average_contact_bin + '"') else ""} \
      ~{if defined(decimal_places) then ("--decimalPlaces " +  '"' + decimal_places + '"') else ""} \
      ~{if defined(write_filenames_to_file) then ("--writeFileNamesToFile " +  '"' + write_filenames_to_file + '"') else ""} \
      ~{if defined(fixate_range) then ("--fixateRange " +  '"' + fixate_range + '"') else ""} \
      ~{true="--allViewpointsList" false="" all_viewpoints_list} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""}
  >>>
  parameter_meta {
    matrices: "Path to the Hi-C matrices which store the captured Hi-C data per sample."
    range_defines_region: "RANGE   Defines the region upstream and downstream of a reference point which should be considered in the analysis. Please remember to use the same fixate range setting as for the background model computation and that distances of the range larger than the fixate range use the background model of those.Format is --region upstream downstream"
    reference_points: "Reference point file. Needs to be in the format: 'chr 100' for a single reference point or 'chr 100 200' for a reference region and with a single reference point per line"
    background_model_file: "path to the background file computed by chicViewpointBackgroundModel"
    threads: "Number of threads (uses the python multiprocessing module)."
    average_contact_bin: "Average the contacts of n bins via a sliding window approach to smooth the values and be less sensitive for outliers."
    decimal_places: "Decimal places for all output floating numbers in the viewpoint files."
    write_filenames_to_file: "Set this parameter to have a file with all file names of the viewpoint files (useful only in batch processing mode)."
    fixate_range: "Fixate range of background model starting at distance x. E.g. all values greater 500kb are set to the value of the 500kb bin."
    all_viewpoints_list: "Writes a file where all viewpoints all samples are sorted by the viewpoints."
    output_folder: "This folder contains all created viewpoint files."
    var_11: ""
  }
}