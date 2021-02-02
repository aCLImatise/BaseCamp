version 1.0

task MafSelectpy {
  command <<<
    maf_select_py
  >>>
  output {
    File out_stdout = stdout()
  }
}