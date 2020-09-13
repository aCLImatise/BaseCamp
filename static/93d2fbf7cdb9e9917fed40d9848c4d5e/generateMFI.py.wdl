version 1.0

task GenerateMFIpy {
  input {
    File? file_location_flow
    String? what_calculate_centroids
    File? file_location_mfi
    String remove_columns
  }
  command <<<
    generateMFI_py \
      ~{remove_columns} \
      ~{if defined(file_location_flow) then ("-i " +  '"' + file_location_flow + '"') else ""} \
      ~{if defined(what_calculate_centroids) then ("-M " +  '"' + what_calculate_centroids + '"') else ""} \
      ~{if defined(file_location_mfi) then ("-o " +  '"' + file_location_mfi + '"') else ""}
  >>>
  parameter_meta {
    file_location_flow: "File location for the Flow Result file."
    what_calculate_centroids: "what to calculate for centroids."
    file_location_mfi: "File location for the MFI output file."
    remove_columns: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_location_mfi = "${in_file_location_mfi}"
  }
}