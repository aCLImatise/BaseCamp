version 1.0

task HiLineBwaaligntworeads {
  input {
    Boolean? rmd_ups
    String reads_dot_dot_dot
  }
  command <<<
    HiLine bwa_align_two_reads \
      ~{reads_dot_dot_dot} \
      ~{if (rmd_ups) then "--rmdups" else ""}
  >>>
  parameter_meta {
    rmd_ups: "/ --no-rmdups  Run samtools mark_dup pipeline on alignment.\\nDefault=rmdups"
    reads_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}