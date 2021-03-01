version 1.0

task Obo2apopl {
  command <<<
    obo2apo_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}