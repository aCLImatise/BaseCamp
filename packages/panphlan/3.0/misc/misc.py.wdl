version 1.0

task Miscpy {
  command <<<
    misc_py
  >>>
  output {
    File out_stdout = stdout()
  }
}