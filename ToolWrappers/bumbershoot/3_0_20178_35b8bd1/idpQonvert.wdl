version 1.0

task IdpQonvert {
  command <<<
    idpQonvert
  >>>
  output {
    File out_stdout = stdout()
  }
}