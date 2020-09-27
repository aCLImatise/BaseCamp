version 1.0

task Vmigratesh {
  command <<<
    vmigrate_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}