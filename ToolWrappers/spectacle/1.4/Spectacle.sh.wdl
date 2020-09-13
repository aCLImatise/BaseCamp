version 1.0

task Spectaclesh {
  command <<<
    Spectacle_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}