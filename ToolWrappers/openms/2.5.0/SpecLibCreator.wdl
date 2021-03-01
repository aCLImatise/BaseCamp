version 1.0

task SpecLibCreator {
  input {
    File? info
    String? item_seperator
    Boolean? item_enclosed
    File? spec
    File? out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    SpecLibCreator \
      ~{if defined(info) then ("-info " +  '"' + info + '"') else ""} \
      ~{if defined(item_seperator) then ("-itemseperator " +  '"' + item_seperator + '"') else ""} \
      ~{if defined(item_enclosed) then ("-itemenclosed " +  '"' + item_enclosed + '"') else ""} \
      ~{if defined(spec) then ("-spec " +  '"' + spec + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    info: "*          Holds id, peptide, retention time etc. (valid formats: 'csv')"
    item_seperator: "Separator between items. e.g. , (default: ',')"
    item_enclosed: "'true' or 'false' if true every item is enclosed e.g. '$peptide$,$run$... (default: 'false' valid: 'true', 'false')"
    spec: "*          Spectra (valid formats: 'mzData', 'mzXML')"
    out: "*           Output MSP formatted spectra library (valid formats: 'msp')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}