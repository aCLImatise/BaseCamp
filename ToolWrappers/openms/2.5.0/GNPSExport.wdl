version 1.0

task GNPSExport {
  input {
    File? in_cm
    String? in_mzm_l
    File? out
    String? output_type
    Int? precursor_mz_tolerance
    Int? precursor_rt_tolerance
    Boolean? merged_spectra
    File? ini
    Int? threads
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
      ~{if (merged_spectra) then "-merged_spectra" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}