version 1.0

task CruxPercolator {
  input {
    String peptide_spectrum_matches
  }
  command <<<
    crux percolator \
      ~{peptide_spectrum_matches}
  >>>
  parameter_meta {
    peptide_spectrum_matches: ""
  }
}