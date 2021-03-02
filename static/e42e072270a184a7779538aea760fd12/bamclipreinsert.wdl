version 1.0

task Bamclipreinsert {
  command <<<
    bamclipreinsert
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}