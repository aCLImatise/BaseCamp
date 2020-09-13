version 1.0

task LongSpanningReads {
  input {
    String reads_dot_fa_slashdot_fq
  }
  command <<<
    long_spanning_reads \
      ~{reads_dot_fa_slashdot_fq}
  >>>
  parameter_meta {
    reads_dot_fa_slashdot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}