version 1.0

task GetGenesInCategorypl {
  command <<<
    getGenesInCategory_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}