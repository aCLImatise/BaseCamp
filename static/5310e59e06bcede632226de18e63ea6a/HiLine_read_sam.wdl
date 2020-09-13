version 1.0

task HiLineReadsam {
  input {
    Boolean? rmd_ups
    String sam
  }
  command <<<
    HiLine read_sam \
      ~{sam} \
      ~{if (rmd_ups) then "--rmdups" else ""}
  >>>
  parameter_meta {
    rmd_ups: "/ --no-rmdups  Run samtools mark_dup pipeline on alignment.\\nDefault=rmdups"
    sam: ""
  }
  output {
    File out_stdout = stdout()
  }
}