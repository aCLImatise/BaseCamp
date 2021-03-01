version 1.0

task Collatepl {
  command <<<
    Collate_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}