version 1.0

task ConvertOrganismIDpl {
  command <<<
    convertOrganismID_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}