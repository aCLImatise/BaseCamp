version 1.0

task OpenSwathDIAPreScoring {
  input {
    File? tr
    String? swath_files
    File? output_files
    Float? min_upper_edge_dist
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    OpenSwathDIAPreScoring \
      ~{if defined(tr) then ("-tr " +  '"' + tr + '"') else ""} \
      ~{if defined(swath_files) then ("-swath_files " +  '"' + swath_files + '"') else ""} \
      ~{if defined(output_files) then ("-output_files " +  '"' + output_files + '"') else ""} \
      ~{if defined(min_upper_edge_dist) then ("-min_upper_edge_dist " +  '"' + min_upper_edge_dist + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    tr: "*                    Transition file (valid formats: 'traML')"
    swath_files: "*          Swath files that were used to extract the transitions. If present, SWATH specific scoring will be applied. (valid formats: 'mzML')"
    output_files: "Output files. One per Swath input file. (valid formats: 'tsv')"
    min_upper_edge_dist: "Minimal distance to the edge to still consider a precursor, in Thomson (only in SWATH) (default: '0.0')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}