version 1.0

task HiLineBwaalignsamreads {
  input {
    Boolean? rmd_ups
    String? tag
    String reads
  }
  command <<<
    HiLine bwa_align_sam_reads \
      ~{reads} \
      ~{if (rmd_ups) then "--rmdups" else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""}
  >>>
  parameter_meta {
    rmd_ups: "/ --no-rmdups  Run samtools mark_dup pipeline on alignment.\\nDefault=rmdups"
    tag: "SAM tag(s) to append to reads."
    reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}