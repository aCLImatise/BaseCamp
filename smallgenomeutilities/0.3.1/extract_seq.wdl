version 1.0

task ExtractSeq {
  input {
    File? name_write_sequence
    String? sequence_name_extract
    Boolean? do_remove_gaps
    String msa_file
  }
  command <<<
    extract_seq \
      ~{msa_file} \
      ~{if defined(name_write_sequence) then ("-o " +  '"' + name_write_sequence + '"') else ""} \
      ~{if defined(sequence_name_extract) then ("-s " +  '"' + sequence_name_extract + '"') else ""} \
      ~{if (do_remove_gaps) then "-g" else ""}
  >>>
  parameter_meta {
    name_write_sequence: "Name of output file to write sequence to"
    sequence_name_extract: "Sequence name to extract"
    do_remove_gaps: "Do not remove gaps"
    msa_file: "file containing MSA"
  }
  output {
    File out_stdout = stdout()
    File out_name_write_sequence = "${in_name_write_sequence}"
  }
}