version 1.0

task HiLineBwaalignoneread {
  input {
    Boolean? rmd_ups
    String reads
  }
  command <<<
    HiLine bwa_align_one_read \
      ~{reads} \
      ~{if (rmd_ups) then "--rmdups" else ""}
  >>>
  parameter_meta {
    rmd_ups: "/ --no-rmdups  Run samtools mark_dup pipeline on alignment.\\nDefault=rmdups"
    reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}