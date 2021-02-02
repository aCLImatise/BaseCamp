version 1.0

task MRMPairFinder {
  input {
    File? in
    File? pair_in
    File? out
    File? feature_out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MRMPairFinder \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(pair_in) then ("-pair_in " +  '"' + pair_in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(feature_out) then ("-feature_out " +  '"' + feature_out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*          Input featureXML file containing the features of the MRM experiment spectra. (valid formats: 'featureXML')"
    pair_in: "*     Pair-file in the format: prec-m/z-light prec-m/z-heavy frag-m/z-light frag-m/z-heavy rt (valid formats: 'csv')"
    out: "*         Output consensusXML file were the pairs of the features will be written to. (valid formats: 'consensusXML')"
    feature_out: "Output featureXML file, only written if given, skipped otherwise. (valid formats: 'featureXML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_feature_out = "${in_feature_out}"
  }
}