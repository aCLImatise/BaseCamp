version 1.0

task FFEval {
  input {
    File? in
    File? truth
    String? rt_to_l
    String? rt_to_l_abs
    String? mz_to_l
    File? out
    File? abort_reasons
    File? out_roc
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FFEval \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(truth) then ("-truth " +  '"' + truth + '"') else ""} \
      ~{if defined(rt_to_l) then ("-rt_tol " +  '"' + rt_to_l + '"') else ""} \
      ~{if defined(rt_to_l_abs) then ("-rt_tol_abs " +  '"' + rt_to_l_abs + '"') else ""} \
      ~{if defined(mz_to_l) then ("-mz_tol " +  '"' + mz_to_l + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(abort_reasons) then ("-abort_reasons " +  '"' + abort_reasons + '"') else ""} \
      ~{if defined(out_roc) then ("-out_roc " +  '"' + out_roc + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*            Feature input file, which contains the data to be tested against the truth file. (valid formats: 'featureXML')"
    truth: "*         Truth feature file that defines what features should be found. (valid formats: 'featureXML')"
    rt_to_l: "Allowed tolerance of RT relative to average feature RT span. (default: '0.3' min: '0.0')"
    rt_to_l_abs: "Allowed absolute tolerance of RT (overwrites 'rt_tol' if set above zero). (default: '-1.0' min: '-1.0')"
    mz_to_l: "Allowed tolerance in m/z (is divided by charge). (default: '0.25' min: '0.0')"
    out: "Feature output file. If given, an annotated input file is written. (valid formats: 'featureXML')"
    abort_reasons: "Feature file containing seeds with abort reasons. (valid formats: 'featureXML')"
    out_roc: "If given, a ROC curve file is created (ROC points based on intensity threshold) (valid formats: 'csv')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}