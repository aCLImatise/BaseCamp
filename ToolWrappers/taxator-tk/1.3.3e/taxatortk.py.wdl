version 1.0

task Taxatortkpy {
  command <<<
    taxatortk_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}