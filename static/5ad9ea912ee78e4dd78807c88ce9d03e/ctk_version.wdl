version 1.0

task Ctkversion {
  command <<<
    ctk_version
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}