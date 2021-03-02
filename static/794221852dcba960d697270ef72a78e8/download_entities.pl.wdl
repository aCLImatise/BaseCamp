version 1.0

task Downloadentitiespl {
  command <<<
    download_entities_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}