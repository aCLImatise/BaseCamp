version 1.0

task EmirgeAmpliconpy {
  command <<<
    emirge_amplicon_py
  >>>
  output {
    File out_stdout = stdout()
  }
}