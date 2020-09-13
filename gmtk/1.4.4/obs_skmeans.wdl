version 1.0

task Obsskmeans {
  command <<<
    obs_skmeans
  >>>
  output {
    File out_stdout = stdout()
  }
}