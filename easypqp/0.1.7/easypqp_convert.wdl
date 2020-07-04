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
    String? fragment_types
    String? fragment_charges
    Boolean? enable_specific_losses
    Boolean? enable_unspecific_losses
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
      ~{if defined(fragment_types) then ("--fragment_types " +  '"' + fragment_types + '"') else ""} \
      ~{if defined(fragment_charges) then ("--fragment_charges " +  '"' + fragment_charges + '"') else ""} \
      ~{true="--enable_specific_losses" false="" enable_specific_losses} \
      ~{true="--enable_unspecific_losses" false="" enable_unspecific_losses} \
      ~{if defined(subsample_fraction) then ("--subsample_fraction " +  '"' + subsample_fraction + '"') else ""}
  >>>
  parameter_meta {
    pep_xml: "The input MSFragger TSV file.  [required]"
    spectra: "The input mzXML or MGF (timsTOF only) file. [required]"
    uni_mod: "The input UniMod XML file."
    psms: "Output PSMs file."
    peaks: "Output peaks file."
    exclude_range: "massdiff in this range will not be mapped to UniMod.  [default: -1.5,3.5]"
    max_delta_uni_mod: "Maximum delta mass (Dalton) for UniMod annotation.  [default: 0.02]"
    max_delta_ppm: "Maximum delta mass (PPM) for annotation. [default: 15]"
    fragment_types: "Allowed fragment ion types (a,b,c,x,y,z). [default: b, y]"
    fragment_charges: "Allowed fragment ion charges.  [default: 1, 2, 3, 4]"
    enable_specific_losses: "/ --no-enable_specific_losses Enable specific fragment ion losses. [default: False]"
    enable_unspecific_losses: "/ --no-enable_unspecific_losses Enable unspecific fragment ion losses. [default: False]"
    subsample_fraction: "Data fraction used for subsampling. [default: 1.0]"
  }
}