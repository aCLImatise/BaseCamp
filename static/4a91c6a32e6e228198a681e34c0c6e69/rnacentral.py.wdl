version 1.0

task Rnacentralpy {
  command <<<
    rnacentral_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}