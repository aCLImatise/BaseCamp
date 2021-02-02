version 1.0

task CartHess2FCpy {
  command <<<
    CartHess2FC_py
  >>>
  output {
    File out_stdout = stdout()
  }
}