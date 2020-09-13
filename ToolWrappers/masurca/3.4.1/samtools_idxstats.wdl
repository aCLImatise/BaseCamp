version 1.0

task SamtoolsIdxstats {
  input {
    String in_dot_bam
  }
  command <<<
    samtools idxstats \
      ~{in_dot_bam}
  >>>
  parameter_meta {
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}