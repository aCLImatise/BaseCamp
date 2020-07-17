version 1.0

task FastqFilterpair {
  input {
    String filter_pair
    String fast_q_one
    String fast_q_two
    String paired_one
    String paired_two
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
}