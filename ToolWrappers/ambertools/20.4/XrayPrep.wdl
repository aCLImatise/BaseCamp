version 1.0

task XrayPrep {
  command <<<
    XrayPrep
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}