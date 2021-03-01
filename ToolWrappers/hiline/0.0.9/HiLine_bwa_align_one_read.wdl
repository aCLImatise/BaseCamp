version 1.0

task HiLineBwaalignoneread {
  input {
    Boolean? no_rmd_ups
    String reads
  }
  command <<<
    HiLine bwa_align_one_read \
      ~{reads} \
      ~{if (no_rmd_ups) then "--no-rmdups" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_rmd_ups: "Run samtools mark_dup pipeline on alignment.\\nDefault=rmdups"
    reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}