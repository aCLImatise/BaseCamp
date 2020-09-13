version 1.0

task Obthermo {
  command <<<
    obthermo
  >>>
  output {
    File out_stdout = stdout()
  }
}