version 1.0

task Spliceaiwrapper {
  command <<<
    spliceai_wrapper
  >>>
  output {
    File out_stdout = stdout()
  }
}