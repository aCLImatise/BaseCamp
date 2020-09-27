version 1.0

task CruxPercolatorDecoy_ {
  input {
    String crux
    String percolator
    String peptide_spectrum_matches
  }
  command <<<
    crux percolator decoy__ \
      ~{crux} \
      ~{percolator} \
      ~{peptide_spectrum_matches}
  >>>
  parameter_meta {
    crux: ""
    percolator: ""
    peptide_spectrum_matches: ""
  }
  output {
    File out_stdout = stdout()
  }
}