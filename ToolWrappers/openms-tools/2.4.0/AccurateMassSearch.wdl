version 1.0

task AccurateMassSearch {
  input {
    File? in
    File? out
    File? out_annotation
    File? positive_adducts
    File? negative_adducts
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    AccurateMassSearch \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_annotation) then ("-out_annotation " +  '"' + out_annotation + '"') else ""} \
      ~{if defined(positive_adducts) then ("-positive_adducts " +  '"' + positive_adducts + '"') else ""} \
      ~{if defined(negative_adducts) then ("-negative_adducts " +  '"' + negative_adducts + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                FeatureXML or consensusXML file (valid formats: 'featureXML', 'consensusXML')"
    out: "*               MzTab file (valid formats: 'mzTab')"
    out_annotation: "A copy of the input file, annotated with matching hits from the database. (valid formats: 'featureXML', 'consensusXML')"
    positive_adducts: "*  This file contains the list of potential positive adducts that will be looked for in the database. Edit the list if you wish to exclude/include adducts. By default CHEMISTRY/PositiveAdducts.tsv in OpenMS/share is used! If empty, the default will be used. (valid formats: 'tsv')"
    negative_adducts: "*  This file contains the list of potential negative adducts that will be looked for in the database. Edit the list if you wish to exclude/include adducts. By default CHEMISTRY/NegativeAdducts.tsv in OpenMS/share is used! If empty, the default will be used. (valid formats: 'tsv')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}