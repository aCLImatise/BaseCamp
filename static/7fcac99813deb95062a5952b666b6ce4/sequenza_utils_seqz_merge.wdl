version 1.0

task SequenzaUtilsSeqzMerge {
  input {
    String? output_file_gzip
    String? seq_zone
    String? seq_z_two
    String? tab_ix
  }
  command <<<
    sequenza-utils seqz_merge \
      ~{if defined(output_file_gzip) then ("--output " +  '"' + output_file_gzip + '"') else ""} \
      ~{if defined(seq_zone) then ("--seqz1 " +  '"' + seq_zone + '"') else ""} \
      ~{if defined(seq_z_two) then ("--seqz2 " +  '"' + seq_z_two + '"') else ""} \
      ~{if defined(tab_ix) then ("--tabix " +  '"' + tab_ix + '"') else ""}
  >>>
  parameter_meta {
    output_file_gzip: "Output file. For gzip compressed output name the file ending in .gz. Default STDOUT"
    seq_zone: "First input file. If both input files contain the same line, the information in the first file will be used"
    seq_z_two: "Second input file"
    tab_ix: "Path of the tabix binary. Default \"tabix\""
  }
}