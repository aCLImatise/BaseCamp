version 1.0

task Pandaseqdiff {
  command <<<
    pandaseq_diff
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}