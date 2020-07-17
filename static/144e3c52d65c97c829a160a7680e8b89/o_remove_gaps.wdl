version 1.0

task ORemoveGaps {
  input {
    File? path_for_output
    String fast_a_file_path
  }
  command <<<
    o-remove-gaps \
      ~{fast_a_file_path} \
      ~{if defined(path_for_output) then ("--output " +  '"' + path_for_output + '"') else ""}
  >>>
  parameter_meta {
    path_for_output: "Path for output."
    fast_a_file_path: "FASTA file that contains reads to be padded"
  }
}