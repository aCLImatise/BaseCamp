version 1.0

task ERPairFinder {
  input {
    File? in
    File? pair_in
    File? out
    File? feature_out
    String? precursor_mass_tolerance
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    ERPairFinder \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(pair_in) then ("-pair_in " +  '"' + pair_in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(feature_out) then ("-feature_out " +  '"' + feature_out + '"') else ""} \
      ~{if defined(precursor_mass_tolerance) then ("-precursor_mass_tolerance " +  '"' + precursor_mass_tolerance + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                            Input mzML file containing the ER spectra. (valid formats: 'mzML')"
    pair_in: "*                       Pair-file in the format: m/z-light m/z-heavy charge rt (valid formats: 'txt')"
    out: "*                           Output consensusXML file were the pairs of the feature are written into. (valid formats: 'consensusXML')"
    feature_out: "Output featureXML file, only written if given, skipped otherwise. (valid formats: 'featureXML')"
    precursor_mass_tolerance: "Precursor mass tolerance which is used for the pair finding and the matching of the given pair m/z values to the features. (default: '0.3' min: '0')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}