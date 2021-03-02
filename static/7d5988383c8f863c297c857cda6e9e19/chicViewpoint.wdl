version 1.0

task ChicViewpoint {
  input {
    Array[String] matrices
    String? range_defines_upstream
    File? reference_points
    File? background_model_file
    Int? threads
    String? average_contact_bin
    Float? decimal_places
    File? write_filenames_to_file
    Int? fixate_range
    Boolean? all_viewpoints_list
    Directory? output_folder
    String var_11
  }
  command <<<
    chicViewpoint \
      ~{var_11} \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(range_defines_upstream) then ("--range " +  '"' + range_defines_upstream + '"') else ""} \
      ~{if defined(reference_points) then ("--referencePoints " +  '"' + reference_points + '"') else ""} \
      ~{if defined(background_model_file) then ("--backgroundModelFile " +  '"' + background_model_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(average_contact_bin) then ("--averageContactBin " +  '"' + average_contact_bin + '"') else ""} \
      ~{if defined(decimal_places) then ("--decimalPlaces " +  '"' + decimal_places + '"') else ""} \
      ~{if defined(write_filenames_to_file) then ("--writeFileNamesToFile " +  '"' + write_filenames_to_file + '"') else ""} \
      ~{if defined(fixate_range) then ("--fixateRange " +  '"' + fixate_range + '"') else ""} \
      ~{if (all_viewpoints_list) then "--allViewpointsList" else ""} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrices: "Path to the Hi-C matrices which store the captured\\nHi-C data per sample."
    range_defines_upstream: "RANGE   Defines the region upstream and downstream of a\\nreference point which should be considered in the\\nanalysis. Please remember to use the same fixate range\\nsetting as for the background model computation and\\nthat distances of the range larger than the fixate\\nrange use the background model of those.Format is\\n--region upstream downstream"
    reference_points: "Reference point file. Needs to be in the format: 'chr\\n100' for a single reference point or 'chr 100 200' for\\na reference region and with a single reference point\\nper line"
    background_model_file: "path to the background file computed by\\nchicViewpointBackgroundModel"
    threads: "Number of threads (uses the python multiprocessing\\nmodule)."
    average_contact_bin: "Average the contacts of n bins via a sliding window\\napproach to smooth the values and be less sensitive\\nfor outliers."
    decimal_places: "Decimal places for all output floating numbers in the\\nviewpoint files."
    write_filenames_to_file: "Set this parameter to have a file with all file names\\nof the viewpoint files (useful only in batch\\nprocessing mode)."
    fixate_range: "Fixate range of background model starting at distance\\nx. E.g. all values greater 500kb are set to the value\\nof the 500kb bin."
    all_viewpoints_list: "Writes a file where all viewpoints all samples are\\nsorted by the viewpoints."
    output_folder: "This folder contains all created viewpoint files."
    var_11: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}