version 1.0

task IDMassAccuracy {
  input {
    File? in
    File? id_in
    File? out_precursor
    Boolean? precursor_error_ppm
    File? out_fragment
    Boolean? fragment_error_ppm
    Float? fragment_mass_tolerance
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDMassAccuracy \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(id_in) then ("-id_in " +  '"' + id_in + '"') else ""} \
      ~{if defined(out_precursor) then ("-out_precursor " +  '"' + out_precursor + '"') else ""} \
      ~{if (precursor_error_ppm) then "-precursor_error_ppm" else ""} \
      ~{if defined(out_fragment) then ("-out_fragment " +  '"' + out_fragment + '"') else ""} \
      ~{if (fragment_error_ppm) then "-fragment_error_ppm" else ""} \
      ~{if defined(fragment_mass_tolerance) then ("-fragment_mass_tolerance " +  '"' + fragment_mass_tolerance + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                      Input mzML file list, containing the spectra. (valid formats: 'mzML')"
    id_in: "*                   Input idXML file list, containing the identifications. (valid formats: 'idXML')"
    out_precursor: "Output file which contains the deviations from the precursors (valid formats: 'tsv')"
    precursor_error_ppm: "If this flag is used, the precursor mass tolerances are estimated in ppm instead of Da."
    out_fragment: "Output file which contains the fragment ion m/z deviations (valid formats: 'tsv')"
    fragment_error_ppm: "If this flag is used, the fragment mass tolerances are estimated in ppm instead of Da."
    fragment_mass_tolerance: "Maximal fragment mass tolerance which is allowed for MS/MS spectra, used for the calculation of matching ions. (default: '0.5')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out_precursor = "${in_out_precursor}"
    File out_out_fragment = "${in_out_fragment}"
  }
}