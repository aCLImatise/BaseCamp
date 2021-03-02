version 1.0

task Prokkapy {
  command <<<
    prokka_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}