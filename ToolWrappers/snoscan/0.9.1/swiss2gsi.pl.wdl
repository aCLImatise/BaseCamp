version 1.0

task Swiss2gsipl {
  command <<<
    swiss2gsi_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}