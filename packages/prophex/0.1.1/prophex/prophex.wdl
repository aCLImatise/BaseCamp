version 1.0

task Prophex {
  command <<<
    prophex
  >>>
  output {
    File out_stdout = stdout()
  }
}