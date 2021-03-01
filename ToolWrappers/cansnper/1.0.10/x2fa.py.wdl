version 1.0

task X2fapy {
  command <<<
    x2fa_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}