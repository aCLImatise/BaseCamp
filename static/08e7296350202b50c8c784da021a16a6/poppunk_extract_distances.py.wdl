version 1.0

task PoppunkExtractDistancespy {
  input {
    File? distances
    File? name_output_file
    String extract_distances
  }
  command <<<
    poppunk_extract_distances_py \
      ~{extract_distances} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""}
  >>>
  parameter_meta {
    distances: "Prefix of input pickle and numpy file of pre-\\ncalculated distances (required)"
    name_output_file: "Name of output file"
    extract_distances: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}