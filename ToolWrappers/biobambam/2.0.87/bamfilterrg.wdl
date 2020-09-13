version 1.0

task Bamfilterrg {
  command <<<
    bamfilterrg
  >>>
  output {
    File out_stdout = stdout()
  }
}