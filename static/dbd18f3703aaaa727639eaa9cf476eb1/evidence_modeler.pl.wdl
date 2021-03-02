version 1.0

task EvidenceModelerpl {
  command <<<
    evidence_modeler_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}