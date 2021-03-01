version 1.0

task Translatepy {
  command <<<
    translate_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}