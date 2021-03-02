version 1.0

task IDConflictResolver {
  input {
    File? in
    File? out
    String? resolve_between_features
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDConflictResolver \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(resolve_between_features) then ("-resolve_between_features " +  '"' + resolve_between_features + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                                           Input file (data annotated with identifications) (valid formats: 'featureXML', 'consensusXML')"
    out: "*                                          Output file (data with one peptide identification per feature) (valid formats: 'featureXML', 'consensusXML')"
    resolve_between_features: "A map may contain multiple features with both identical (possibly modified i.e. not stripped) sequence and charge state. The feature with the 'highest intensity' is very likely the most reliable one. When switched on, the filter removes the sequence annotation from the lower intensity features, thereby resolving the multiplicity. Only the most reliable features for each (possibly modified i.e. not stripped) sequence maintain annotated with this peptide sequence. (default: 'off' valid: 'off', 'highest_intensity')"
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