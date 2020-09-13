version 1.0

task OpenSwathAssayGenerator {
  input {
    File? in
    File? in_type
    File? out
    File? out_type
    Int? min_transitions
    Int? max_transitions
    String? allowed_fragment_types
    Int? allowed_fragment_charges
    Boolean? enable_detection_specific_losses
    Boolean? enable_detection_unspecific_losses
    Float? precursor_mz_threshold
    Int? precursor_lower_mz_limit
    Int? precursor_upper_mz_limit
    Float? product_mz_threshold
    Int? product_lower_mz_limit
    Int? product_upper_mz_limit
    File? swath_windows_file
    File? uni_mod_file
    Boolean? enable_ipf
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    OpenSwathAssayGenerator \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_type) then ("-in_type " +  '"' + in_type + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_type) then ("-out_type " +  '"' + out_type + '"') else ""} \
      ~{if defined(min_transitions) then ("-min_transitions " +  '"' + min_transitions + '"') else ""} \
      ~{if defined(max_transitions) then ("-max_transitions " +  '"' + max_transitions + '"') else ""} \
      ~{if defined(allowed_fragment_types) then ("-allowed_fragment_types " +  '"' + allowed_fragment_types + '"') else ""} \
      ~{if defined(allowed_fragment_charges) then ("-allowed_fragment_charges " +  '"' + allowed_fragment_charges + '"') else ""} \
      ~{if (enable_detection_specific_losses) then "-enable_detection_specific_losses" else ""} \
      ~{if (enable_detection_unspecific_losses) then "-enable_detection_unspecific_losses" else ""} \
      ~{if defined(precursor_mz_threshold) then ("-precursor_mz_threshold " +  '"' + precursor_mz_threshold + '"') else ""} \
      ~{if defined(precursor_lower_mz_limit) then ("-precursor_lower_mz_limit " +  '"' + precursor_lower_mz_limit + '"') else ""} \
      ~{if defined(precursor_upper_mz_limit) then ("-precursor_upper_mz_limit " +  '"' + precursor_upper_mz_limit + '"') else ""} \
      ~{if defined(product_mz_threshold) then ("-product_mz_threshold " +  '"' + product_mz_threshold + '"') else ""} \
      ~{if defined(product_lower_mz_limit) then ("-product_lower_mz_limit " +  '"' + product_lower_mz_limit + '"') else ""} \
      ~{if defined(product_upper_mz_limit) then ("-product_upper_mz_limit " +  '"' + product_upper_mz_limit + '"') else ""} \
      ~{if defined(swath_windows_file) then ("-swath_windows_file " +  '"' + swath_windows_file + '"') else ""} \
      ~{if defined(uni_mod_file) then ("-unimod_file " +  '"' + uni_mod_file + '"') else ""} \
      ~{if (enable_ipf) then "-enable_ipf" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                           Input file (valid formats: 'tsv', 'mrm', 'pqp', 'TraML')"
    in_type: "Input file type -- default: determined from file extension or content\\n(valid: 'tsv', 'mrm', 'pqp', 'TraML')"
    out: "*                          Output file (valid formats: 'tsv', 'pqp', 'TraML')"
    out_type: "Output file type -- default: determined from file extension or content\\n(valid: 'tsv', 'pqp', 'TraML')"
    min_transitions: "Minimal number of transitions (default: '6')"
    max_transitions: "Maximal number of transitions (default: '6')"
    allowed_fragment_types: "Allowed fragment types (default: 'b,y')"
    allowed_fragment_charges: "Allowed fragment charge states (default: '1,2,3,4')"
    enable_detection_specific_losses: "Set this flag if specific neutral losses for detection fragment ions should be allowed"
    enable_detection_unspecific_losses: "Set this flag if unspecific neutral losses (H2O1, H3N1, C1H2N2, C1H2N1O1) for detection fragment ions should be allowed"
    precursor_mz_threshold: "MZ threshold in Thomson for precursor ion selection (default: '0.025')"
    precursor_lower_mz_limit: "Lower MZ limit for precursor ions (default: '400')"
    precursor_upper_mz_limit: "Upper MZ limit for precursor ions (default: '1200')"
    product_mz_threshold: "MZ threshold in Thomson for fragment ion annotation (default: '0.025')"
    product_lower_mz_limit: "Lower MZ limit for fragment ions (default: '350')"
    product_upper_mz_limit: "Upper MZ limit for fragment ions (default: '2000')"
    swath_windows_file: "Tab separated file containing the SWATH windows for exclusion of fragment ions falling into the precursor isolation window: lower_offset upper_offset \\newline 400 425 \\newline ... Note that the first line is a header and will be skipped. (valid formats: 'txt')"
    uni_mod_file: "(Modified) Unimod XML file (http://www.unimod.org/xml/unimod.xml) describing residue modifiability (valid formats: 'xml')"
    enable_ipf: "IPF: set this flag if identification transitions should be generated for IPF. Note: Requires setting 'unimod_file'."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_type = "${in_out_type}"
  }
}