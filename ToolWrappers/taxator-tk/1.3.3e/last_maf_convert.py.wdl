version 1.0

task LastMafConvertpy {
  command <<<
    last_maf_convert_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}