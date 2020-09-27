version 1.0

task LynerEstimate {
  input {
    String? distribution
  }
  command <<<
    lyner estimate \
      ~{if defined(distribution) then ("--distribution " +  '"' + distribution + '"') else ""}
  >>>
  parameter_meta {
    distribution: "May be any of ['negbinom', 'gamma', 'laisson', 't',\\n'norm', 'cauchy', 'lognorm'] as well as any\\ndistribution in `scipy.stats.rv_continuous`."
  }
  output {
    File out_stdout = stdout()
  }
}