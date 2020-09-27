version 1.0

task Data {
  command <<<
    data
  >>>
  output {
    File out_stdout = stdout()
  }
}