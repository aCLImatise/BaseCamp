version 1.0

task ChromosomerFastalengthOutput {
  input {
    String chromosome_r
    String fast_a_length
    String fast_a
    String var_output
  }
  command <<<
    chromosomer fastalength output \
      ~{chromosome_r} \
      ~{fast_a_length} \
      ~{fast_a} \
      ~{var_output}
  >>>
  parameter_meta {
    chromosome_r: ""
    fast_a_length: ""
    fast_a: ""
    var_output: ""
  }
}