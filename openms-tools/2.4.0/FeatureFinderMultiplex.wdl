version 1.0

task FeatureFinderMultiplex {
  input {
    File? in
    File? out
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FeatureFinderMultiplex \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                              LC-MS dataset in either centroid or profile mode (valid formats: 'mzML')"
    out: "Output file containing the individual peptide features. (valid formats: 'featureXML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}