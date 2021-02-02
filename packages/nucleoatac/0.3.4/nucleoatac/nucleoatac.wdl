version 1.0

task Nucleoatac {
  command <<<
    nucleoatac
  >>>
  output {
    File out_stdout = stdout()
  }
}