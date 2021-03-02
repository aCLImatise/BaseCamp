version 1.0

task SequenzautilsSeqzBinning {
  input {
    File? seq_z
    Int? window
    File? output_file_stdout
    File? tab_ix
  }
  command <<<
    sequenza_utils seqz_binning \
      ~{if defined(seq_z) then ("--seqz " +  '"' + seq_z + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(output_file_stdout) then ("-o " +  '"' + output_file_stdout + '"') else ""} \
      ~{if defined(tab_ix) then ("--tabix " +  '"' + tab_ix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seq_z: "A seqz file."
    window: "Window size used for binning the original seqz file.\\nDefault is 50."
    output_file_stdout: "Output file \\\"-\\\" for STDOUT"
    tab_ix: "Path of the tabix binary. Default \\\"tabix\\\"\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_stdout = "${in_output_file_stdout}"
  }
}