version 1.0

task HiLineBwaAlignTwoReads {
  input {
    Boolean? rmd_ups
    String reads_dot_dot_dot
  }
  command <<<
    HiLine bwa-align-two-reads \
      ~{reads_dot_dot_dot} \
      ~{true="--rmdups" false="" rmd_ups}
  >>>
  parameter_meta {
    rmd_ups: "/ --no-rmdups  Run samtools mark_dup pipeline on alignment. Default=rmdups"
    reads_dot_dot_dot: ""
  }
}