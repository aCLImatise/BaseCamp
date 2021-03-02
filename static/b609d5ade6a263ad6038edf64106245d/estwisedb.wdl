version 1.0

task Estwisedb {
  command <<<
    estwisedb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}