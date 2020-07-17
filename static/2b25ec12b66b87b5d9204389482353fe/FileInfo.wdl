version 1.0

task FileInfo {
  input {
    File? in
    String? in_type
    File? out
    Boolean? show_meta_information
    Boolean? shows_processing_information
    Boolean? computes_fivenumber_statistics
    Boolean? show_detailed_listing
    Boolean? check_corrupt_data
    Boolean? validate_file_only
    Boolean? check_file_contains
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    FileInfo \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_type) then ("-in_type " +  '"' + in_type + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-m" false="" show_meta_information} \
      ~{true="-p" false="" shows_processing_information} \
      ~{true="-s" false="" computes_fivenumber_statistics} \
      ~{true="-d" false="" show_detailed_listing} \
      ~{true="-c" false="" check_corrupt_data} \
      ~{true="-v" false="" validate_file_only} \
      ~{true="-i" false="" check_file_contains} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*        Input file  (valid formats: 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'idXML', 'pepXML', 'fid', 'mzid', 'trafoXML', 'fasta')"
    in_type: "Input file type -- default: determined from file extension or content (valid: 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'idXML', 'pepXML', 'fid', 'mzid', 'trafoXML')"
    out: "Optional output file. If left out, the output is written to the command line. (valid formats: 'txt')"
    show_meta_information: "Show meta information about the whole experiment"
    shows_processing_information: "Shows data processing information"
    computes_fivenumber_statistics: "Computes a five-number statistics of intensities, qualities, and widths"
    show_detailed_listing: "Show detailed listing of all spectra and chromatograms (peak files only)"
    check_corrupt_data: "Check for corrupt data in the file (peak files only)"
    validate_file_only: "Validate the file only (for mzML, mzData, mzXML, featureXML, idXML, consensusXML, pepXML)"
    check_file_contains: "Check whether a given mzML file contains valid indices (conforming to the indexedmzML standard)"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}