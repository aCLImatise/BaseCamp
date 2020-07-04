version 1.0

task HiLineBwaAlignOneRead {
  input {
    Boolean? rmd_ups
    String reads
  }
  command <<<
    HiLine bwa-align-one-read \
      ~{reads} \
      ~{true="--rmdups" false="" rmd_ups}
  >>>
  parameter_meta {
    rmd_ups: "/ --no-rmdups  Run samtools mark_dup pipeline on alignment. Default=rmdups"
    reads: ""
  }
}