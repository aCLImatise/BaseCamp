version 1.0

task SpectraSTSearchAdapter {
  input {
    File? executable
    String? spectra_files
    String? output_files
    String? library_file
    String? sequence_database_file
    String? sequence_database_type
    String? search_file
    String? params_file
    String? precursor_mz_tolerance
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    SpectraSTSearchAdapter \
      ~{if defined(executable) then ("-executable " +  '"' + executable + '"') else ""} \
      ~{if defined(spectra_files) then ("-spectra_files " +  '"' + spectra_files + '"') else ""} \
      ~{if defined(output_files) then ("-output_files " +  '"' + output_files + '"') else ""} \
      ~{if defined(library_file) then ("-library_file " +  '"' + library_file + '"') else ""} \
      ~{if defined(sequence_database_file) then ("-sequence_database_file " +  '"' + sequence_database_file + '"') else ""} \
      ~{if defined(sequence_database_type) then ("-sequence_database_type " +  '"' + sequence_database_type + '"') else ""} \
      ~{if defined(search_file) then ("-search_file " +  '"' + search_file + '"') else ""} \
      ~{if defined(params_file) then ("-params_file " +  '"' + params_file + '"') else ""} \
      ~{if defined(precursor_mz_tolerance) then ("-precursor_mz_tolerance " +  '"' + precursor_mz_tolerance + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    executable: "*                                                            Path to the SpectraST executable to use; may be empty if the executable is globally available."
    spectra_files: "[ <SearchFileName2> ... <SearchFileNameN> ]*  File names(s) of spectra to be searched. (valid formats: 'mzML', 'mzXML', 'mzData', 'dta', 'msp')"
    output_files: "[ <OutputFileName2> ... <OutputFileNameN> ]*       Output files. Make sure to specify one output file for each input file (valid formats: 'txt', 'xls', 'pep.xml', 'xml', 'pepXML', 'html')"
    library_file: ".splib*                                                Specify library file. (valid formats: 'splib')"
    sequence_database_file: ".fasta                                The sequence database. (valid formats: 'fasta')"
    sequence_database_type: "Specify type of sequence database (default: 'AA' valid: 'DNA', 'AA')"
    search_file: "Only search a subset of the query spectra in the search file (valid formats: 'txt', ' dat')"
    params_file: "Read search options from file. All options set in the file will be overridden by command-line options, if specified. (valid formats: 'params')"
    precursor_mz_tolerance: "M/z (in Th) tolerance within which candidate entries are compared to the query. Monoisotopic mass is assumed. (default: '3' min: '0')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}