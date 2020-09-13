version 1.0

task AxtToLavpy {
  command <<<
    axt_to_lav_py
  >>>
  output {
    File out_stdout = stdout()
  }
}