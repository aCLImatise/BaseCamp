version 1.0

task OpenSwathConfidenceScoring {
  input {
    File? in
    File? lib
    File? out
    File? traf_o
    Int? decoys
    Int? transitions
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    OpenSwathConfidenceScoring \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(lib) then ("-lib " +  '"' + lib + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(traf_o) then ("-trafo " +  '"' + traf_o + '"') else ""} \
      ~{if defined(decoys) then ("-decoys " +  '"' + decoys + '"') else ""} \
      ~{if defined(transitions) then ("-transitions " +  '"' + transitions + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*            Input file (OpenSwath results) (valid formats: 'featureXML')"
    lib: "*           Assay library (valid formats: 'traML')"
    out: "*           Output file (results with confidence scores) (valid formats: 'featureXML')"
    traf_o: "Retention time transformation (valid formats: 'trafoXML')"
    decoys: "Number of decoy assays to select from the library for every true assay (0 for \\\"all\\\") (default: '1000' min: '0')"
    transitions: "Number of transitions per feature to consider (highest intensities first; 0 for \\\"all\\\") (default: '6' min: '0')"
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