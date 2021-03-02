version 1.0

task BismarkAlignmentModespdf {
  command <<<
    Bismark_alignment_modes_pdf
  >>>
  runtime {
    docker: "quay.io/biocontainers/bismark:0.23.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}