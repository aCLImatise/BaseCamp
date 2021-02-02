version 1.0

task Blasr2coords {
  command <<<
    blasr2coords
  >>>
  output {
    File out_stdout = stdout()
  }
}