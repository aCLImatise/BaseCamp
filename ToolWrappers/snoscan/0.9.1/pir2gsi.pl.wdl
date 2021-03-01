version 1.0

task Pir2gsipl {
  command <<<
    pir2gsi_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}