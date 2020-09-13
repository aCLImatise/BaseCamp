version 1.0

task ConfigViReMapy {
  command <<<
    ConfigViReMa_py
  >>>
  output {
    File out_stdout = stdout()
  }
}