version 1.0

task Export2sampl {
  command <<<
    export2sam_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.11--h6270b1f_0"
  }
  output {
    File out_stdout = stdout()
  }
}