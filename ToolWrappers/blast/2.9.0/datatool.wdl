version 1.0

task Datatool {
  command <<<
    datatool
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}