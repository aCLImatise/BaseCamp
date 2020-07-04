version 1.0

task VerifyExcessCoverage.pl {
  input {
    Boolean? c
    Boolean? max_dev
    Boolean? bam
    String? num_cpu
    Int? max_std_dev
  }
  command <<<
    verify_excess_coverage.pl \
      ~{num_cpu} \
      ~{max_std_dev} \
      ~{true="-c" false="" c} \
      ~{true="--max-dev" false="" max_dev} \
      ~{true="--bam" false="" bam}
  >>>
  parameter_meta {
    c: ""
    max_dev: ""
    bam: ""
    num_cpu: ""
    max_std_dev: ""
  }
}