version 1.0

task MetileneOutputR {
  command <<<
    metilene_output_R
  >>>
  output {
    File out_stdout = stdout()
  }
}