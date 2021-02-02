version 1.0

task STARpy {
  command <<<
    STAR_py
  >>>
  output {
    File out_stdout = stdout()
  }
}