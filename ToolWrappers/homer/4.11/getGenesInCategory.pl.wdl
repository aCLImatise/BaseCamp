version 1.0

task GetGenesInCategorypl {
  command <<<
    getGenesInCategory_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}