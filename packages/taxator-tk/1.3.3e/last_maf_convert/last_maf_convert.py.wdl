version 1.0

task LastMafConvertpy {
  command <<<
    last_maf_convert_py
  >>>
  output {
    File out_stdout = stdout()
  }
}