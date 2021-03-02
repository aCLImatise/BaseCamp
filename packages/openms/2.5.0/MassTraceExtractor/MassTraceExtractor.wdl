version 1.0

task MassTraceExtractor {
  input {
    File? in
    File? out
    File? out_type
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MassTraceExtractor \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_type) then ("-out_type " +  '"' + out_type + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*        Input centroided mzML file (valid formats: 'mzML')"
    out: "*       Output featureXML file with mass traces (valid formats: 'featureXML', 'consensusXML')"
    out_type: "Output file type -- default: determined from file extension or content (valid: 'featureXML', 'consensusXML')"
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