version 1.0

task IsobaricAnalyzer {
  input {
    Int? type
    File? in
    File? out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IsobaricAnalyzer \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    type: "Isobaric Quantitation method used in the experiment. (default: 'itraq4plex' valid: 'itraq4plex', 'itraq8plex', 'tmt10plex', 'tmt11plex', 'tmt16plex', 'tmt6plex')"
    in: "*        Input raw/picked data file  (valid formats: 'mzML')"
    out: "*       Output consensusXML file with quantitative information (valid formats: 'consensusXML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}