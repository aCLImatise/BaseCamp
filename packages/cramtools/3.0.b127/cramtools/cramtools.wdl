version 1.0

task Cramtools {
  command <<<
    cramtools
  >>>
  output {
    File out_stdout = stdout()
  }
}