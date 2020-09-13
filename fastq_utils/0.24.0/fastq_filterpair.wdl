version 1.0

task FastqFilterpair {
  input {
    String filter_pair
    Int fast_q_one
    Int fast_q_two
    Int paired_one
    Int paired_two
    String unpaired
    String? sorted
  }
  command <<<
    fastq_filterpair \
      ~{filter_pair} \
      ~{fast_q_one} \
      ~{fast_q_two} \
      ~{paired_one} \
      ~{paired_two} \
      ~{unpaired} \
      ~{sorted}
  >>>
  parameter_meta {
    filter_pair: ""
    fast_q_one: ""
    fast_q_two: ""
    paired_one: ""
    paired_two: ""
    unpaired: ""
    sorted: ""
  }
  output {
    File out_stdout = stdout()
  }
}