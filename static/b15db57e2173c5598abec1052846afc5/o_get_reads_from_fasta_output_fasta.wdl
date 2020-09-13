version 1.0

task OgetreadsfromfastaOutputFasta {
  input {
    Boolean? s
    String o_get_reads_from_fast_a
    String input_fast_a
    String ids_file
    String output_fast_a
  }
  command <<<
    o_get_reads_from_fasta output_fasta \
      ~{o_get_reads_from_fast_a} \
      ~{input_fast_a} \
      ~{ids_file} \
      ~{output_fast_a} \
      ~{if (s) then "-S" else ""}
  >>>
  parameter_meta {
    s: ""
    o_get_reads_from_fast_a: ""
    input_fast_a: ""
    ids_file: ""
    output_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}