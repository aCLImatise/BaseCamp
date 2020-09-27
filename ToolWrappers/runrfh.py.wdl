version 1.0

task Runrfhpy {
  command <<<
    runrfh_py
  >>>
  output {
    File out_stdout = stdout()
  }
}