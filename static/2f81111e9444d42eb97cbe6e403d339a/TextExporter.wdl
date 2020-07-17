version 1.0

task TextExporter {
  input {
    File? in
    File? out
    String? separator
    String? replacement
    String? quoting
    Boolean? no_ids
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    TextExporter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(separator) then ("-separator " +  '"' + separator + '"') else ""} \
      ~{if defined(replacement) then ("-replacement " +  '"' + replacement + '"') else ""} \
      ~{if defined(quoting) then ("-quoting " +  '"' + quoting + '"') else ""} \
      ~{true="-no_ids" false="" no_ids} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                              Input file  (valid formats: 'featureXML', 'consensusXML', 'idXML', 'mzML')"
    out: "Output file (mandatory for featureXML and idXML) (valid formats: 'csv')"
    separator: "The used separator character(s); if not set the 'tab' character is used"
    replacement: "Used to replace occurrences of the separator in strings before writing, if 'quoting' is 'none' (default: '_')"
    quoting: "Method for quoting of strings: 'none' for no quoting, 'double' for quoting with doubling of embedded quotes, 'escape' for quoting with backslash-escaping of embedded quotes (default: 'none' valid: 'none', 'double', 'escape')"
    no_ids: "Suppresses output of identification data."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}