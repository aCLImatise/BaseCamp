version 1.0

task OGetReadsFromFastaIdsFile {
  input {
    Boolean? s
    String o_get_reads_from_fast_a
    String input_fast_a
    String ids_file
    String output_fast_a
  }
  command <<<
    o-get-reads-from-fasta ids_file \
      ~{o_get_reads_from_fast_a} \
      ~{input_fast_a} \
      ~{ids_file} \
      ~{output_fast_a} \
      ~{true="-S" false="" s}
  >>>
  parameter_meta {
    s: ""
    o_get_reads_from_fast_a: ""
    input_fast_a: ""
    ids_file: ""
    output_fast_a: ""
  }
}