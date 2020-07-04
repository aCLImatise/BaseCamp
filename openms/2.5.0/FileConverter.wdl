version 1.0

task FileConverter {
  input {
    File? in
    File? out
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FileConverter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*        Input file to convert. (valid formats: 'mzML', 'mzXML', 'mgf', 'raw', 'cachedMzML', 'mzData', 'dta', 'dta2d', 'featureXML', 'consensusXML', 'ms2', 'fid', 'tsv', 'peplist', 'kroenik', 'edta')"
    out: "*       Output file (valid formats: 'mzML', 'mzXML', 'cachedMzML', 'mgf', 'featureXML', 'consensusXML', 'edta', 'mzData', 'dta2d', 'csv')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}