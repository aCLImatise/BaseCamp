version 1.0

task GetOntologyR {
  command <<<
    getOntology_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}