version 1.0

task FileInfo {
  input {
    File? in
    File? in_type
    File? out
    Boolean? show_meta_information
    Boolean? shows_processing_information
    Boolean? computes_fivenumber_statistics
    Boolean? show_detailed_listing
    Boolean? check_corrupt_only
    Boolean? validate_file_consensusxml
    Boolean? check_file_contains
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FileInfo \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_type) then ("-in_type " +  '"' + in_type + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (show_meta_information) then "-m" else ""} \
      ~{if (shows_processing_information) then "-p" else ""} \
      ~{if (computes_fivenumber_statistics) then "-s" else ""} \
      ~{if (show_detailed_listing) then "-d" else ""} \
      ~{if (check_corrupt_only) then "-c" else ""} \
      ~{if (validate_file_consensusxml) then "-v" else ""} \
      ~{if (check_file_contains) then "-i" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*        Input file  (valid formats: 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'idXML', 'pepXML', 'fid', 'mzid', 'trafoXML', 'fasta')"
    in_type: "Input file type -- default: determined from file extension or content (valid: 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'idXML', 'pepXML', 'fid', 'mzid', 'trafoXML')"
    out: "Optional output file. If left out, the output is written to the command line. (valid formats: 'txt')"
    show_meta_information: "Show meta information about the whole experiment"
    shows_processing_information: "Shows data processing information"
    computes_fivenumber_statistics: "Computes a five-number statistics of intensities, qualities, and widths"
    show_detailed_listing: "Show detailed listing of all spectra and chromatograms (peak files only)"
    check_corrupt_only: "Check for corrupt data in the file (peak files only)"
    validate_file_consensusxml: "Validate the file only (for mzML, mzData, mzXML, featureXML, idXML, consensusXML, pepXML)"
    check_file_contains: "Check whether a given mzML file contains valid indices (conforming to the indexedmzML standard)"
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