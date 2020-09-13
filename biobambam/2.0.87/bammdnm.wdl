version 1.0

task Bammdnm {
  command <<<
    bammdnm
  >>>
  output {
    File out_stdout = stdout()
  }
}