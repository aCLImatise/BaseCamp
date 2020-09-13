version 1.0

task ConvertOrganismIDplFile {
  command <<<
    convertOrganismID_pl file
  >>>
  output {
    File out_stdout = stdout()
  }
}