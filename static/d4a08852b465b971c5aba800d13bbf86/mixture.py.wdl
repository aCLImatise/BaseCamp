version 1.0

task Mixturepy {
  command <<<
    mixture_py
  >>>
  output {
    File out_stdout = stdout()
  }
}