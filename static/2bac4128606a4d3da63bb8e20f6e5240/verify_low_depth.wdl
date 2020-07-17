version 1.0

task VerifyLowDepth.pl {
  input {
    Boolean? c
    Boolean? var_1
    Boolean? bam
    String? num_cpu
    Int? var_4
  }
  command <<<
    verify_low_depth.pl \
      ~{num_cpu} \
      ~{var_4} \
      ~{true="-c" false="" c} \
      ~{true="--max-depth" false="" var_1} \
      ~{true="--bam" false="" bam}
  >>>
  parameter_meta {
    c: ""
    var_1: ""
    bam: ""
    num_cpu: ""
    var_4: ""
  }
}