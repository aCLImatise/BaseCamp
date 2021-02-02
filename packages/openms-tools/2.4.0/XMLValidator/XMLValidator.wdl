version 1.0

task XMLValidator {
  input {
    File? in
    File? schema
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    XMLValidator \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(schema) then ("-schema " +  '"' + schema + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*        File to validate (valid formats: 'mzML', 'mzData', 'featureXML', 'mzid', 'idXML', 'consensusXML', 'mzXML', 'ini', 'pepXML', 'TraML', 'xml')"
    schema: "Schema to validate against.\\nIf no schema is given, the file is validated against the latest schema of the file type. (valid formats: 'xsd')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}