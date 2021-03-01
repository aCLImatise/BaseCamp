version 1.0

task OpenSwathRewriteToFeatureXML {
  input {
    File? csv
    File? feature_xml
    File? out
    Float? fdr_cut_off
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    OpenSwathRewriteToFeatureXML \
      ~{if defined(csv) then ("-csv " +  '"' + csv + '"') else ""} \
      ~{if defined(feature_xml) then ("-featureXML " +  '"' + feature_xml + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(fdr_cut_off) then ("-FDR_cutoff " +  '"' + fdr_cut_off + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    csv: "MProphet tsv output file: \\\"all_peakgroups.xls\\\" (valid formats: 'csv')"
    feature_xml: "*   Input featureXML file (valid formats: 'featureXML')"
    out: "*          Output featureXML file (valid formats: 'featureXML')"
    fdr_cut_off: "FDR cutoff (e.g. to remove all features with a an m_score above 0.05 use 0.05 here) (default: '-1.0')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_csv = "${in_csv}"
    File out_out = "${in_out}"
  }
}