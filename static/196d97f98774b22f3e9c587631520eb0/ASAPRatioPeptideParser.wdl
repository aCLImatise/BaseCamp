version 1.0

task ASAPRatioPeptideParser {
  input {
    Boolean? str_change_labeled
    Boolean? heavy_labeled_peptide
    Boolean? num_areaflag_set
    Boolean? num_range_mz
    Boolean? static_modification_quantification
    Boolean? use_fixed_range
    Boolean? quantitate_only_state
    Boolean? return_ratio_even
    Boolean? set_background_zero
    Boolean? num_minimum_peptideprophet
    Boolean? num_minimum_iprophet
    Boolean? str_specified_masses
    Boolean? experimental_use_smoothing
    String? xml_file
  }
  command <<<
    ASAPRatioPeptideParser \
      ~{xml_file} \
      ~{true="-l" false="" str_change_labeled} \
      ~{true="-b" false="" heavy_labeled_peptide} \
      ~{true="-f" false="" num_areaflag_set} \
      ~{true="-r" false="" num_range_mz} \
      ~{true="-S" false="" static_modification_quantification} \
      ~{true="-F" false="" use_fixed_range} \
      ~{true="-C" false="" quantitate_only_state} \
      ~{true="-B" false="" return_ratio_even} \
      ~{true="-Z" false="" set_background_zero} \
      ~{true="-p" false="" num_minimum_peptideprophet} \
      ~{true="-i" false="" num_minimum_iprophet} \
      ~{true="-m" false="" str_specified_masses} \
      ~{true="-w" false="" experimental_use_smoothing}
  >>>
  parameter_meta {
    str_change_labeled: "<str>    change labeled residues (default='C')"
    heavy_labeled_peptide: "heavy labeled peptide elutes before light labeled partner"
    num_areaflag_set: "<num>    areaFlag set to num (ratio display option)"
    num_range_mz: "<num>    range around precusor m/z to search for peak (default 0.5)"
    static_modification_quantification: "static modification quantification (i.e. each run is either all light or all heavy)"
    use_fixed_range: "use fixed scan range for light and heavy"
    quantitate_only_state: "quantitate only the charge state where the CID was made"
    return_ratio_even: "return a ratio even if the background is high"
    set_background_zero: "set all background to zero"
    num_minimum_peptideprophet: "<num>    minimum PeptideProphet probability to process (default 0)"
    num_minimum_iprophet: "<num>    minimum iProphet probability to process (default 0)"
    str_specified_masses: "<str>    specified label masses (e.g. M74.325Y125.864), only relevant for static modification quantification "
    experimental_use_smoothing: "EXPERIMENTAL: use wavelet smoothing from WaveletQuant implmentation"
    xml_file: ""
  }
}