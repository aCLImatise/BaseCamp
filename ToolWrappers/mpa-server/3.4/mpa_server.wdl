version 1.0

task Mpaserver {
  command <<<
    mpa_server
  >>>
  output {
    File out_stdout = stdout()
  }
}