version 1.0

task Hlatyperpy {
  command <<<
    hlatyper_py
  >>>
  output {
    File out_stdout = stdout()
  }
}