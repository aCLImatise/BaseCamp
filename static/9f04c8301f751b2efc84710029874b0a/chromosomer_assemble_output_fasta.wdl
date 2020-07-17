version 1.0

task ChromosomerAssembleOutputFasta {
  input {
    Boolean? s
    String chromosome_r
    String assemble
    String var_map
    String fragment_fast_a
    String output_fast_a
  }
  command <<<
    chromosomer assemble output_fasta \
      ~{chromosome_r} \
      ~{assemble} \
      ~{var_map} \
      ~{fragment_fast_a} \
      ~{output_fast_a} \
      ~{true="-s" false="" s}
  >>>
  parameter_meta {
    s: ""
    chromosome_r: ""
    assemble: ""
    var_map: ""
    fragment_fast_a: ""
    output_fast_a: ""
  }
}