version 1.0

task PLEKmodel {
  command <<<
    PLEK_model
  >>>
  output {
    File out_stdout = stdout()
  }
}