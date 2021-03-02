version 1.0

task CruxPercolatorFalse {
  input {
    String crux
    String percolator
    String peptide_spectrum_matches
  }
  command <<<
    crux percolator false_ \
      ~{crux} \
      ~{percolator} \
      ~{peptide_spectrum_matches}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    percolator: ""
    peptide_spectrum_matches: ""
  }
  output {
    File out_stdout = stdout()
  }
}