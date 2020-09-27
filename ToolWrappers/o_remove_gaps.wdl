version 1.0

task Oremovegaps {
  input {
    File? path_for_output
    String fast_a_file_path
  }
  command <<<
    o_remove_gaps \
      ~{fast_a_file_path} \
      ~{if defined(path_for_output) then ("--output " +  '"' + path_for_output + '"') else ""}
  >>>
  parameter_meta {
    path_for_output: "Path for output.\\n"
    fast_a_file_path: "FASTA file that contains reads to be padded"
  }
  output {
    File out_stdout = stdout()
    File out_path_for_output = "${in_path_for_output}"
  }
}