version 1.0

task GetRecomap {
  command <<<
    get_recomap
  >>>
  output {
    File out_stdout = stdout()
  }
}