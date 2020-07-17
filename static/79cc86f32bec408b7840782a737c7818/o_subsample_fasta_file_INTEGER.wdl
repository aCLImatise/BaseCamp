version 1.0

task OSubsampleFastaFileINTEGER {
  input {
    String o_subsample_fast_a_file
    File var_1
    Int integer
    File var_3
  }
  command <<<
    o-subsample-fasta-file INTEGER \
      ~{o_subsample_fast_a_file} \
      ~{var_1} \
      ~{integer} \
      ~{var_3}
  >>>
  parameter_meta {
    o_subsample_fast_a_file: ""
    var_1: ""
    integer: ""
    var_3: ""
  }
}