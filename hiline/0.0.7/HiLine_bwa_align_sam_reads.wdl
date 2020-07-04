version 1.0

task HiLineBwaAlignSamReads {
  input {
    Boolean? rmd_ups
    String? tag
    String reads
  }
  command <<<
    HiLine bwa-align-sam-reads \
      ~{reads} \
      ~{true="--rmdups" false="" rmd_ups} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""}
  >>>
  parameter_meta {
    rmd_ups: "/ --no-rmdups  Run samtools mark_dup pipeline on alignment. Default=rmdups"
    tag: "SAM tag(s) to append to reads."
    reads: ""
  }
}