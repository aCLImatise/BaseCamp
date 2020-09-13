version 1.0

task IdpAssemble {
  command <<<
    idpAssemble
  >>>
  output {
    File out_stdout = stdout()
  }
}