version 1.0

task Fixfastq {
  command <<<
    fixfastq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}