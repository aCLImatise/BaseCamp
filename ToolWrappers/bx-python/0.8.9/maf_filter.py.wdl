version 1.0

task MafFilterpy {
  command <<<
    maf_filter_py
  >>>
  output {
    File out_stdout = stdout()
  }
}