version 1.0

task EasypqpConvert {
  input {
    File? pep_xml
    File? spectra
    File? uni_mod
    File? psms
    File? peaks
    String? exclude_range
    Float? max_delta_uni_mod
    Float? max_delta_ppm
    Boolean? no_enable_unannotated
    Boolean? no_enable_mass_diff
    String? fragment_types
    Int? fragment_charges
    Boolean? no_enable_specific_losses
    Boolean? no_enable_unspecific_losses
    Float? subsample_fraction
  }
  command <<<
    easypqp convert \
      ~{if defined(pep_xml) then ("--pepxml " +  '"' + pep_xml + '"') else ""} \
      ~{if defined(spectra) then ("--spectra " +  '"' + spectra + '"') else ""} \
      ~{if defined(uni_mod) then ("--unimod " +  '"' + uni_mod + '"') else ""} \
      ~{if defined(psms) then ("--psms " +  '"' + psms + '"') else ""} \
      ~{if defined(peaks) then ("--peaks " +  '"' + peaks + '"') else ""} \
      ~{if defined(exclude_range) then ("--exclude-range " +  '"' + exclude_range + '"') else ""} \
      ~{if defined(max_delta_uni_mod) then ("--max_delta_unimod " +  '"' + max_delta_uni_mod + '"') else ""} \
      ~{if defined(max_delta_ppm) then ("--max_delta_ppm " +  '"' + max_delta_ppm + '"') else ""} \
      ~{if (no_enable_unannotated) then "--no-enable_unannotated" else ""} \
      ~{if (no_enable_mass_diff) then "--no-enable_massdiff" else ""} \
      ~{if defined(fragment_types) then ("--fragment_types " +  '"' + fragment_types + '"') else ""} \
      ~{if defined(fragment_charges) then ("--fragment_charges " +  '"' + fragment_charges + '"') else ""} \
      ~{if (no_enable_specific_losses) then "--no-enable_specific_losses" else ""} \
      ~{if (no_enable_unspecific_losses) then "--no-enable_unspecific_losses" else ""} \
      ~{if defined(subsample_fraction) then ("--subsample_fraction " +  '"' + subsample_fraction + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easypqp:0.1.11--py_0"
  }
  parameter_meta {
    pep_xml: "The input MSFragger TSV file.  [required]"
    spectra: "The input mzXML or MGF (timsTOF only) file.\\n[required]"
    uni_mod: "The input UniMod XML file."
    psms: "Output PSMs file."
    peaks: "Output peaks file."
    exclude_range: "massdiff in this range will not be mapped to"
    max_delta_uni_mod: "Maximum delta mass (Dalton) for UniMod"
    max_delta_ppm: "Maximum delta mass (PPM) for annotation.\\n[default: 15]"
    no_enable_unannotated: "Enable mapping uf unannotated delta masses.\\n[default: False]"
    no_enable_mass_diff: "Enable mapping uf mass differences reported\\nby legacy search engines.  [default: False]"
    fragment_types: "Allowed fragment ion types (a,b,c,x,y,z).\\n[default: b, y]"
    fragment_charges: "Allowed fragment ion charges.  [default: 1,\\n2, 3, 4]"
    no_enable_specific_losses: "Enable specific fragment ion losses.\\n[default: False]"
    no_enable_unspecific_losses: "Enable unspecific fragment ion losses.\\n[default: False]"
    subsample_fraction: "Data fraction used for subsampling.\\n[default: 1.0]"
  }
  output {
    File out_stdout = stdout()
    File out_psms = "${in_psms}"
    File out_peaks = "${in_peaks}"
  }
}