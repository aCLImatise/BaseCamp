version 1.0

task MetileneOutputR {
  command <<<
    metilene_output_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}