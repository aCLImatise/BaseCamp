version 1.0

task GetOntologyR {
  command <<<
    getOntology_R
  >>>
  output {
    File out_stdout = stdout()
  }
}