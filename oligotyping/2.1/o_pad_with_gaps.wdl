version 1.0

task OPadWithGaps {
  input {
    Boolean? reverse
    File? path_for_output
    String fast_a_file_path
  }
  command <<<
    o-pad-with-gaps \
      ~{fast_a_file_path} \
      ~{true="--reverse" false="" reverse} \
      ~{if defined(path_for_output) then ("--output " +  '"' + path_for_output + '"') else ""}
  >>>
  parameter_meta {
    reverse: "Pad the beginning of reads, instead of the end (default: False)"
    path_for_output: "Path for output."
    fast_a_file_path: "FASTA file that contains reads to be padded"
  }
}