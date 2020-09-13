version 1.0

task MergeMidaspy {
  command <<<
    merge_midas_py
  >>>
  output {
    File out_stdout = stdout()
  }
}