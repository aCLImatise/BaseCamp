version 1.0

task OpenSwathAnalyzer {
  input {
    File? in
    File? tr
    File? rt_norm
    File? out
    Boolean? no_strict
    Int? swath_files
    Int? min_upper_edge_dist
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    OpenSwathAnalyzer \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(tr) then ("-tr " +  '"' + tr + '"') else ""} \
      ~{if defined(rt_norm) then ("-rt_norm " +  '"' + rt_norm + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (no_strict) then "-no-strict" else ""} \
      ~{if defined(swath_files) then ("-swath_files " +  '"' + swath_files + '"') else ""} \
      ~{if defined(min_upper_edge_dist) then ("-min_upper_edge_dist " +  '"' + min_upper_edge_dist + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                    Input file containing the chromatograms. (valid formats: 'mzML')"
    tr: "*                    Transition file (valid formats: 'TraML')"
    rt_norm: "RT normalization file (how to map the RTs of this run to the ones stored in the library) (valid formats: 'trafoXML')"
    out: "*                   Output file (valid formats: 'featureXML')"
    no_strict: "Run in non-strict mode and allow some chromatograms to not be mapped."
    swath_files: "[applies only if you have full MS2 spectra maps] Swath files that were used to extract the transitions. If present, SWATH specific scoring will be used. (valid formats: 'mzML')"
    min_upper_edge_dist: "[applies only if you have full MS2 spectra maps] Minimal distance to the edge to still consider a precursor, in Thomson (only in SWATH) (default: '0')"
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