version 1.0

task Bogusness {
  command <<<
    bogusness
  >>>
  output {
    File out_stdout = stdout()
  }
}