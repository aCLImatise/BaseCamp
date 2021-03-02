version 1.0

task HiLineBwaalignsamreads {
  input {
    Boolean? no_rmd_ups
    String? tag
    String reads
  }
  command <<<
    HiLine bwa_align_sam_reads \
      ~{reads} \
      ~{if (no_rmd_ups) then "--no-rmdups" else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_rmd_ups: "Run samtools mark_dup pipeline on alignment.\\nDefault=rmdups"
    tag: "SAM tag(s) to append to reads."
    reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}