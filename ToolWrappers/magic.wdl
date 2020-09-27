version 1.0

task Magic {
  command <<<
    magic
  >>>
  output {
    File out_stdout = stdout()
  }
}