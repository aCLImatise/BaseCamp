version 1.0

task SequenzaUtilsSeqzBinning {
  input {
    String? seq_z
    String? window
    String? output_file_stdout
    String? tab_ix
  }
  command <<<
    sequenza-utils seqz_binning \
      ~{if defined(seq_z) then ("--seqz " +  '"' + seq_z + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(output_file_stdout) then ("-o " +  '"' + output_file_stdout + '"') else ""} \
      ~{if defined(tab_ix) then ("--tabix " +  '"' + tab_ix + '"') else ""}
  >>>
  parameter_meta {
    seq_z: "A seqz file."
    window: "Window size used for binning the original seqz file. Default is 50."
    output_file_stdout: "Output file \"-\" for STDOUT"
    tab_ix: "Path of the tabix binary. Default \"tabix\""
  }
}