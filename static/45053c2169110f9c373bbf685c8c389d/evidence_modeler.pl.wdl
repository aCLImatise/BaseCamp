version 1.0

task EvidenceModelerpl {
  command <<<
    evidence_modeler_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}