version 1.0

task Splash {
  command <<<
    splash
  >>>
  output {
    File out_stdout = stdout()
  }
}