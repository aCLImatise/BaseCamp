version 1.0

task RgiClean {
  command <<<
    rgi_clean
  >>>
  output {
    File out_stdout = stdout()
  }
}