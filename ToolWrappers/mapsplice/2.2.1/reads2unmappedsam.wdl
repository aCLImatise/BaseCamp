version 1.0

task Reads2unmappedsam {
  command <<<
    reads2unmappedsam
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}