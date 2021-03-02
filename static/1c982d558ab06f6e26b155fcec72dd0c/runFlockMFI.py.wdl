version 1.0

task RunFlockMFIpy {
  input {
    File? file_location_fcs
    Int? run_flock_flock
    String? what_calculate_centroids
    Int? number_of_bins
    String? density
    File? file_location_output_file
    File? file_location_output_centroid
    File? file_location_output_profile
  }
  command <<<
    runFlockMFI_py \
      ~{if defined(file_location_fcs) then ("-i " +  '"' + file_location_fcs + '"') else ""} \
      ~{if defined(run_flock_flock) then ("-m " +  '"' + run_flock_flock + '"') else ""} \
      ~{if defined(what_calculate_centroids) then ("-M " +  '"' + what_calculate_centroids + '"') else ""} \
      ~{if defined(number_of_bins) then ("-b " +  '"' + number_of_bins + '"') else ""} \
      ~{if defined(density) then ("-d " +  '"' + density + '"') else ""} \
      ~{if defined(file_location_output_file) then ("-o " +  '"' + file_location_output_file + '"') else ""} \
      ~{if defined(file_location_output_centroid) then ("-c " +  '"' + file_location_output_centroid + '"') else ""} \
      ~{if defined(file_location_output_profile) then ("-p " +  '"' + file_location_output_profile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_location_fcs: "File location for the FCS file."
    run_flock_flock: "Run flock1 or flock2."
    what_calculate_centroids: "what to calculate for centroids."
    number_of_bins: "Number of Bins."
    density: "Density."
    file_location_output_file: "File location for the output file."
    file_location_output_centroid: "File location for the output centroid file."
    file_location_output_profile: "File location for the output profile file."
  }
  output {
    File out_stdout = stdout()
    File out_file_location_output_file = "${in_file_location_output_file}"
    File out_file_location_output_centroid = "${in_file_location_output_centroid}"
    File out_file_location_output_profile = "${in_file_location_output_profile}"
  }
}