version 1.0

task QCCalculator {
  input {
    File? in
    File? out
    File? id
    File? feature
    File? consensus
    Boolean? remove_duplicate_features
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    QCCalculator \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(feature) then ("-feature " +  '"' + feature + '"') else ""} \
      ~{if defined(consensus) then ("-consensus " +  '"' + consensus + '"') else ""} \
      ~{if (remove_duplicate_features) then "-remove_duplicate_features" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                  Raw data input file (this is relevant if you want to look at MS1, MS2 and precursor peak information) (valid formats: 'mzML')"
    out: "*                 Your qcML file. (valid formats: 'qcML')"
    id: "Input idXML file containing the identifications. Your identifications will be exported in an easy-to-read format (valid formats: 'idXML')"
    feature: "Feature input file (this is relevant for most QC issues) (valid formats: 'featureXML')"
    consensus: "Consensus input file (this is only used for charge state deconvoluted output. Use the consensusXML output form the DeCharger) (valid formats: 'consensusXML')"
    remove_duplicate_features: "This flag should be set, if you work with a set of merged features."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}