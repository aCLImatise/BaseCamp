version 1.0

task FilterEST {
  command <<<
    filterEST
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}