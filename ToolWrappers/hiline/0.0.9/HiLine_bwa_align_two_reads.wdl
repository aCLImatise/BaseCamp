version 1.0

task HiLineBwaaligntworeads {
  input {
    Boolean? no_rmd_ups
    String reads_dot_dot_dot
  }
  command <<<
    HiLine bwa_align_two_reads \
      ~{reads_dot_dot_dot} \
      ~{if (no_rmd_ups) then "--no-rmdups" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_rmd_ups: "Run samtools mark_dup pipeline on alignment.\\nDefault=rmdups"
    reads_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}