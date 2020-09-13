version 1.0

task Ca2scaff {
  command <<<
    ca2scaff
  >>>
  output {
    File out_stdout = stdout()
  }
}