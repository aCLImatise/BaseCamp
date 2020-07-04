version 1.0

task PSMFeatureExtractor {
  input {
    File? in
    File? out
    String? extra
    Boolean? multiple_search_engines
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    PSMFeatureExtractor \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(extra) then ("-extra " +  '"' + extra + '"') else ""} \
      ~{true="-multiple_search_engines" false="" multiple_search_engines} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                 Input file(s) (valid formats: 'mzid', 'idXML')"
    out: "*                 Output file in mzid or idXML format (valid formats: 'mzid', 'idXML')"
    extra: "List of the MetaData parameters to be included in a feature set for precolator."
    multiple_search_engines: "Combine PSMs from different search engines by merging on scan level."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}