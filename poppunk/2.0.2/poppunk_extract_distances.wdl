version 1.0

task PoppunkExtractDistances.py {
  input {
    String? distances
    String? name_output_file
    String extract_distances
  }
  command <<<
    poppunk_extract_distances.py \
      ~{extract_distances} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""}
  >>>
  parameter_meta {
    distances: "Prefix of input pickle and numpy file of pre- calculated distances (required)"
    name_output_file: "Name of output file"
    extract_distances: ""
  }
}