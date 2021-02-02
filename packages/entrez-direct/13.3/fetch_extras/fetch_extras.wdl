version 1.0

task Fetchextras {
  command <<<
    fetch_extras
  >>>
  output {
    File out_stdout = stdout()
  }
}