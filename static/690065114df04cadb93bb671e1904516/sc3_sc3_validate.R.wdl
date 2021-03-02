version 1.0

task Sc3sc3validateR {
  command <<<
    sc3_sc3_validate_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}