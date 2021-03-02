version 1.0

task RunCrossSamplepy {
  input {
    File? file_locations_flow
    String? filenames
    File? file_location_mfi_text
    File? path_directory_output
    String? what_calculate_centroids
    File? file_location_summary
    File? file_location_mfi_summary
    File? file_location_stats
  }
  command <<<
    runCrossSample_py \
      ~{if defined(file_locations_flow) then ("-i " +  '"' + file_locations_flow + '"') else ""} \
      ~{if defined(filenames) then ("-n " +  '"' + filenames + '"') else ""} \
      ~{if defined(file_location_mfi_text) then ("-m " +  '"' + file_location_mfi_text + '"') else ""} \
      ~{if defined(path_directory_output) then ("-o " +  '"' + path_directory_output + '"') else ""} \
      ~{if defined(what_calculate_centroids) then ("-M " +  '"' + what_calculate_centroids + '"') else ""} \
      ~{if defined(file_location_summary) then ("-s " +  '"' + file_location_summary + '"') else ""} \
      ~{if defined(file_location_mfi_summary) then ("-S " +  '"' + file_location_mfi_summary + '"') else ""} \
      ~{if defined(file_location_stats) then ("-a " +  '"' + file_location_stats + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_locations_flow: "File locations for flow text files."
    filenames: "Filenames"
    file_location_mfi_text: "File location for the MFI text file."
    path_directory_output: "Path to the directory for the output files."
    what_calculate_centroids: "what to calculate for centroids."
    file_location_summary: "File location for the summary statistics."
    file_location_mfi_summary: "File location for the MFI summary statistics."
    file_location_stats: "File location for stats on all markers."
  }
  output {
    File out_stdout = stdout()
    File out_path_directory_output = "${in_path_directory_output}"
  }
}