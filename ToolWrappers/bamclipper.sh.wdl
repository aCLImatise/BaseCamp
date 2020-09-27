version 1.0

task Bamclippersh {
  command <<<
    bamclipper_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}