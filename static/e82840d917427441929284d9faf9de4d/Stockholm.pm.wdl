version 1.0

task Stockholmpm {
  command <<<
    Stockholm_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}