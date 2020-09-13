version 1.0

task Stockholmpm {
  command <<<
    Stockholm_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}