version 1.0

task PrecursorMassCorrector {
  input {
    File? in
    File? out
    File? feature_in
    String? precursor_mass_tolerance
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    PrecursorMassCorrector \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(feature_in) then ("-feature_in " +  '"' + feature_in + '"') else ""} \
      ~{if defined(precursor_mass_tolerance) then ("-precursor_mass_tolerance " +  '"' + precursor_mass_tolerance + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                            Input mzML file containing the spectra. (valid formats: 'mzML')"
    out: "*                           Output mzML file. (valid formats: 'mzML')"
    feature_in: "Input featureXML file, containing features; if set, the MS/MS spectra precursor entries  will be matched to the feature m/z values if possible. (valid formats: 'featureXML')"
    precursor_mass_tolerance: "Maximal deviation in Th which is acceptable to be corrected; this value should be set to the instruments selection window. (default: '1.5' min: '0')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}