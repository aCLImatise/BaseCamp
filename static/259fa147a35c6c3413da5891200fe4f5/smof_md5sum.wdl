version 1.0

task SmofMd5sum {
  input {
    Boolean? ignore_case
    Boolean? each_sequence
    Boolean? all_sequences
    Boolean? all_headers
    Boolean? replace_header
    String input_fasta_sequence
  }
  command <<<
    smof md5sum \
      ~{input_fasta_sequence} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (each_sequence) then "--each-sequence" else ""} \
      ~{if (all_sequences) then "--all-sequences" else ""} \
      ~{if (all_headers) then "--all-headers" else ""} \
      ~{if (replace_header) then "--replace-header" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smof:2.21.1--py_0"
  }
  parameter_meta {
    ignore_case: "convert all to uppercase, before hashing"
    each_sequence: "calculate md5sum for each sequence (TAB delimited)"
    all_sequences: "calculate one md5sum for all concatenated sequences"
    all_headers: "calculate one md5sum for all concatenated headers"
    replace_header: "replace the header of each entry with the checksum of\\nthe sequence\\n"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}