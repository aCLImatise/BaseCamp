version 1.0

task Arachne2scaff {
  command <<<
    arachne2scaff
  >>>
  output {
    File out_stdout = stdout()
  }
}