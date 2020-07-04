version 1.0

task HiLineReadSam {
  input {
    Boolean? rmd_ups
    String sam
  }
  command <<<
    HiLine read-sam \
      ~{sam} \
      ~{true="--rmdups" false="" rmd_ups}
  >>>
  parameter_meta {
    rmd_ups: "/ --no-rmdups  Run samtools mark_dup pipeline on alignment. Default=rmdups"
    sam: ""
  }
}