version 1.0

task FeatureFinderCentroided {
  input {
    File? in
    File? out
    File? seeds
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FeatureFinderCentroided \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(seeds) then ("-seeds " +  '"' + seeds + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*        Input file (valid formats: 'mzML')"
    out: "*       Output file (valid formats: 'featureXML')"
    seeds: "User specified seed list (valid formats: 'featureXML')"
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