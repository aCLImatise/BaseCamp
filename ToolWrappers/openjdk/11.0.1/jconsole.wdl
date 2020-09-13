version 1.0

task Jconsole {
  command <<<
    jconsole
  >>>
  output {
    File out_stdout = stdout()
  }
}