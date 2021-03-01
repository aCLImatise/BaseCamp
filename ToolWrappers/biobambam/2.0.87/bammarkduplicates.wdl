version 1.0

task Bammarkduplicates {
  command <<<
    bammarkduplicates
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}