version 1.0

task SequenzautilsSeqzMerge {
  input {
    File? output_file_gzip
    Int? seq_zone
    Int? seq_z_two
    File? tab_ix
  }
  command <<<
    sequenza_utils seqz_merge \
      ~{if defined(output_file_gzip) then ("--output " +  '"' + output_file_gzip + '"') else ""} \
      ~{if defined(seq_zone) then ("--seqz1 " +  '"' + seq_zone + '"') else ""} \
      ~{if defined(seq_z_two) then ("--seqz2 " +  '"' + seq_z_two + '"') else ""} \
      ~{if defined(tab_ix) then ("--tabix " +  '"' + tab_ix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_gzip: "Output file. For gzip compressed output name the file\\nending in .gz. Default STDOUT"
    seq_zone: "First input file. If both input files contain the same\\nline, the information in the first file will be used"
    seq_z_two: "Second input file"
    tab_ix: "Path of the tabix binary. Default \\\"tabix\\\"\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_gzip = "${in_output_file_gzip}"
  }
}