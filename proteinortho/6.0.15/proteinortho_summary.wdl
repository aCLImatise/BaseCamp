version 1.0

task ProteinorthoSummary.pl {
  input {
    String? optionsOptions
  }
  command <<<
    proteinortho_summary.pl \
      ~{optionsOptions}
  >>>
}