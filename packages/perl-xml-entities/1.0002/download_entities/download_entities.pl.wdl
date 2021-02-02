version 1.0

task Downloadentitiespl {
  command <<<
    download_entities_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}