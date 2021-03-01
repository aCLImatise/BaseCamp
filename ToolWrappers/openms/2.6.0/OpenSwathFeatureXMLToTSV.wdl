version 1.0

task OpenSwathFeatureXMLToTSV {
  input {
    String? in
    File? tr
    File? out
    Boolean? short_format
    String? best_scoring_peptide
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    OpenSwathFeatureXMLToTSV \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(tr) then ("-tr " +  '"' + tr + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (short_format) then "-short_format" else ""} \
      ~{if defined(best_scoring_peptide) then ("-best_scoring_peptide " +  '"' + best_scoring_peptide + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*                     Input files separated by blank (valid formats: 'featureXML')"
    tr: "*                      TraML transition file (valid formats: 'traML')"
    out: "*                     Tsv output file (mProphet compatible) (valid formats: 'csv')"
    short_format: "Whether to write short (one peptide per line) or long format (one transition per line)."
    best_scoring_peptide: "If only the best scoring feature per peptide should be printed, give the variable name"
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