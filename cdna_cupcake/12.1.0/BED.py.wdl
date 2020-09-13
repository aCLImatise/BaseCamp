version 1.0

task BEDpy {
  command <<<
    BED_py
  >>>
  output {
    File out_stdout = stdout()
  }
}