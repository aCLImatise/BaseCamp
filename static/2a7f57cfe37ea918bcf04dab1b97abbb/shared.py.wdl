version 1.0

task Sharedpy {
  command <<<
    shared_py
  >>>
  output {
    File out_stdout = stdout()
  }
}