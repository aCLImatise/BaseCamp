version 1.0

task Emirgepy {
  command <<<
    emirge_py
  >>>
  output {
    File out_stdout = stdout()
  }
}