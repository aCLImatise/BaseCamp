version 1.0

task ConfigViReMapy {
  command <<<
    ConfigViReMa_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}