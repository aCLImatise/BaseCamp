version 1.0

task MetaboliteSpectralMatcher {
  input {
    File? in
    File? database
    File? out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MetaboliteSpectralMatcher \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(database) then ("-database " +  '"' + database + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*        Input spectra. (valid formats: 'mzML')"
    database: "Default spectral database. (valid formats: 'mzML')"
    out: "*       MzTab file (valid formats: 'mzTab')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}