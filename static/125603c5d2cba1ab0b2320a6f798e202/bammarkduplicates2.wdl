version 1.0

task Bammarkduplicates2 {
  command <<<
    bammarkduplicates2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}