version 1.0

task ProteinorthoSummary.pl {
  input {
    String options
  }
  command <<<
    proteinortho_summary.pl \
      ~{options}
  >>>
  parameter_meta {
    options: "-format,-f      enables the table formatting instead of the plain csv output."
  }
}