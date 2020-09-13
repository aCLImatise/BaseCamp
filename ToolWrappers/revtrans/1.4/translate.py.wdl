version 1.0

task Translatepy {
  command <<<
    translate_py
  >>>
  output {
    File out_stdout = stdout()
  }
}