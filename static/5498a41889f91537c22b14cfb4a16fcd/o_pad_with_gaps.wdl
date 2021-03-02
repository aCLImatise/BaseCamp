version 1.0

task Opadwithgaps {
  input {
    Boolean? reverse
    File? path_for_output
    String fast_a_file_path
  }
  command <<<
    o_pad_with_gaps \
      ~{fast_a_file_path} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if defined(path_for_output) then ("--output " +  '"' + path_for_output + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reverse: "Pad the beginning of reads, instead of the end\\n(default: False)"
    path_for_output: "Path for output.\\n"
    fast_a_file_path: "FASTA file that contains reads to be padded"
  }
  output {
    File out_stdout = stdout()
    File out_path_for_output = "${in_path_for_output}"
  }
}