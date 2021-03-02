version 1.0

task Diversitypy {
  command <<<
    diversity_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}