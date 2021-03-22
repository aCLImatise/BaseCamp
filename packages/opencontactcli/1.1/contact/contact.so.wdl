version 1.0

task Contactso {
  command <<<
    contact_so
  >>>
  output {
    File out_stdout = stdout()
  }
}