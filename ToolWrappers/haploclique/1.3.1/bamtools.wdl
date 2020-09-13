version 1.0

task Bamtools {
  command <<<
    bamtools
  >>>
  output {
    File out_stdout = stdout()
  }
}