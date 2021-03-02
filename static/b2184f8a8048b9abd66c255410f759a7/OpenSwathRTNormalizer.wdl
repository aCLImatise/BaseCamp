version 1.0

task OpenSwathRTNormalizer {
  input {
    String? in
    File? tr
    File? out
    File? rt_norm
    Float? min_rsq
    Float? min_coverage
    Boolean? estimate_best_peptides
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    OpenSwathRTNormalizer \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(tr) then ("-tr " +  '"' + tr + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(rt_norm) then ("-rt_norm " +  '"' + rt_norm + '"') else ""} \
      ~{if defined(min_rsq) then ("-min_rsq " +  '"' + min_rsq + '"') else ""} \
      ~{if defined(min_coverage) then ("-min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if (estimate_best_peptides) then "-estimateBestPeptides" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*            Input files separated by blank (valid formats: 'mzML')"
    tr: "*             Transition file with the RT peptides ('TraML' or 'csv') (valid formats: 'csv', 'traML')"
    out: "*            Output file (valid formats: 'trafoXML')"
    rt_norm: "RT normalization file (how to map the RTs of this run to the ones stored in the library) (valid formats: 'trafoXML')"
    min_rsq: "Minimum r-squared of RT peptides regression (default: '0.95')"
    min_coverage: "Minimum relative amount of RT peptides to keep (default: '0.6')"
    estimate_best_peptides: "Whether the algorithms should try to choose the best peptides based on their peak shape for normalization. Use this option you do not expect all your peptides to be detected in a sample and too many 'bad' peptides enter the outlier removal step (e.g. due to them being endogenous peptides or using a less curated list of peptides)."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}