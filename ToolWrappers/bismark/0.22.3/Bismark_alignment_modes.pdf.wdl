version 1.0

task BismarkAlignmentModespdf {
  command <<<
    Bismark_alignment_modes_pdf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}