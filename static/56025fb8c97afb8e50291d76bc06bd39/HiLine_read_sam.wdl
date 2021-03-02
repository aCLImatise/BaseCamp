version 1.0

task HiLineReadsam {
  input {
    Boolean? no_rmd_ups
    String sam
  }
  command <<<
    HiLine read_sam \
      ~{sam} \
      ~{if (no_rmd_ups) then "--no-rmdups" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_rmd_ups: "Run samtools mark_dup pipeline on alignment.\\nDefault=rmdups"
    sam: ""
  }
  output {
    File out_stdout = stdout()
  }
}