version 1.0

task PSMFeatureExtractor {
  input {
    File? in
    File? out
    File? out_type
    String? extra
    Boolean? multiple_search_engines
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    PSMFeatureExtractor \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_type) then ("-out_type " +  '"' + out_type + '"') else ""} \
      ~{if defined(extra) then ("-extra " +  '"' + extra + '"') else ""} \
      ~{if (multiple_search_engines) then "-multiple_search_engines" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                 Input file(s) (valid formats: 'mzid', 'idXML')"
    out: "*                 Output file in mzid or idXML format (valid formats: 'mzid', 'idXML')"
    out_type: "Output file type -- default: determined from file extension or content. (valid: 'mzid', 'idXML')"
    extra: "List of the MetaData parameters to be included in a feature set for precolator."
    multiple_search_engines: "Combine PSMs from different search engines by merging on scan level."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_type = "${in_out_type}"
  }
}