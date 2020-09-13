version 1.0

task Mkreport {
  command <<<
    mkreport
  >>>
  output {
    File out_stdout = stdout()
  }
}