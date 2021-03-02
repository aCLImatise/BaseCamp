version 1.0

task Revcomppy {
  command <<<
    revcomp_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}