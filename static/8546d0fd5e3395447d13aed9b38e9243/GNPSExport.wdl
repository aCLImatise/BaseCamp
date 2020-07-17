version 1.0

task GNPSExport {
  input {
    File? in_cm
    File? in_mzm_l
    File? out
    String? output_type
    String? precursor_mz_tolerance
    String? precursor_rt_tolerance
    Boolean? merged_spectra
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    GNPSExport \
      ~{if defined(in_cm) then ("-in_cm " +  '"' + in_cm + '"') else ""} \
      ~{if defined(in_mzm_l) then ("-in_mzml " +  '"' + in_mzm_l + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(output_type) then ("-output_type " +  '"' + output_type + '"') else ""} \
      ~{if defined(precursor_mz_tolerance) then ("-precursor_mz_tolerance " +  '"' + precursor_mz_tolerance + '"') else ""} \
      ~{if defined(precursor_rt_tolerance) then ("-precursor_rt_tolerance " +  '"' + precursor_rt_tolerance + '"') else ""} \
      ~{true="-merged_spectra" false="" merged_spectra} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in_cm: "*                        Input file containing consensus elements with 'peptide' annotations (valid formats: 'consensusXML')"
    in_mzm_l: "*                     Original mzml files containing ms/ms spectrum information (valid formats: 'mzML')"
    out: "*                          Output MGF file (valid formats: 'mgf')"
    output_type: "Specificity of mgf output information (default: 'full_spectra' valid: 'full_spectra', 'merged_spectra')"
    precursor_mz_tolerance: "Tolerance mz window for precursor selection (default: '1.0e-04')"
    precursor_rt_tolerance: "Tolerance rt window for precursor selection (default: '5.0')"
    merged_spectra: ":cos_similarity <num>  Cosine similarity threshold for merged_spectra output (default: '0.95')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}