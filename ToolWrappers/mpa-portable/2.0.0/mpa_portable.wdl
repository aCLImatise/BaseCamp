version 1.0

task Mpaportable {
  command <<<
    mpa_portable
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}