version 1.0

task IDMassAccuracy {
  input {
    File? in
    File? id_in
    File? precursor_out
    String? precursor_columns
    Boolean? precursor_error_ppm
    File? fragment_out
    String? fragment_columns
    Boolean? fragment_error_ppm
    String? fragment_mass_tolerance
    String? separator
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDMassAccuracy \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(id_in) then ("-id_in " +  '"' + id_in + '"') else ""} \
      ~{if defined(precursor_out) then ("-precursor_out " +  '"' + precursor_out + '"') else ""} \
      ~{if defined(precursor_columns) then ("-precursor_columns " +  '"' + precursor_columns + '"') else ""} \
      ~{true="-precursor_error_ppm" false="" precursor_error_ppm} \
      ~{if defined(fragment_out) then ("-fragment_out " +  '"' + fragment_out + '"') else ""} \
      ~{if defined(fragment_columns) then ("-fragment_columns " +  '"' + fragment_columns + '"') else ""} \
      ~{true="-fragment_error_ppm" false="" fragment_error_ppm} \
      ~{if defined(fragment_mass_tolerance) then ("-fragment_mass_tolerance " +  '"' + fragment_mass_tolerance + '"') else ""} \
      ~{if defined(separator) then ("-separator " +  '"' + separator + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                      Input mzML file list, containing the spectra. (valid formats: 'mzML')"
    id_in: "*                   Input idXML file list, containing the identifications. (valid formats: 'idXML')"
    precursor_out: "Output file which contains the deviations from the precursors (valid formats: 'csv')"
    precursor_columns: "Columns which will be written to the output file (default: '[MassDifference]' valid: 'MassDifference')"
    precursor_error_ppm: "If this flag is used, the precursor mass tolerances are estimated in ppm instead of Da."
    fragment_out: "Output file which contains the fragment ion m/z deviations (valid formats: 'csv')"
    fragment_columns: "Columns which will be written to the output file (default: '[MassDifference]' valid: 'MassDifference')"
    fragment_error_ppm: "If this flag is used, the fragment mass tolerances are estimated in ppm instead of Da."
    fragment_mass_tolerance: "Maximal fragment mass tolerance which is allowed for MS/MS spectra, used for the calculation of matching ions. (default: '0.5')"
    separator: "Character which should be used to separate the columns in the output files (default: ' ')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}