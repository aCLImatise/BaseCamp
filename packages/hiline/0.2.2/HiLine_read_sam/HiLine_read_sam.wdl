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
    docker: "quay.io/biocontainers/hiline:0.2.2--py38hc9558a2_1"
  }
  parameter_meta {
    no_rmd_ups: "Run samtools mark_dup pipeline on alignment.\\nDefault=rmdups"
    sam: ""
  }
  output {
    File out_stdout = stdout()
  }
}