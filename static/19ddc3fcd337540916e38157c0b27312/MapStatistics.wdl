version 1.0

task MapStatistics {
  input {
    File? in
    File? in_type
    File? out
    Int? report_separate_statistics
    Boolean? show_meta_information
    Boolean? shows_processing_information
    Boolean? computes_summary_statistics
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MapStatistics \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_type) then ("-in_type " +  '"' + in_type + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(report_separate_statistics) then ("-n " +  '"' + report_separate_statistics + '"') else ""} \
      ~{if (show_meta_information) then "-m" else ""} \
      ~{if (shows_processing_information) then "-p" else ""} \
      ~{if (computes_summary_statistics) then "-s" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*        Input file (valid formats: 'featureXML', 'consensusXML')"
    in_type: "Input file type -- default: determined from file extension or content (valid: 'featureXML', 'consensusXML')"
    out: "Optional output txt file. If empty, the output is written to the command line. (valid formats: 'txt')"
    report_separate_statistics: "Report separate statistics for each of n RT slices of the map. (default: '4' min: '1' max: '100')"
    show_meta_information: "Show meta information about the whole experiment"
    shows_processing_information: "Shows data processing information"
    computes_summary_statistics: "Computes a summary statistics of intensities, qualities, and widths"
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