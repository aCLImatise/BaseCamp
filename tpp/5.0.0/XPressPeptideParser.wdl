version 1.0

task XPressPeptideParser {
  input {
    Boolean? num_change_default
    Boolean? tolerance_specified_m
    Boolean? strnum_when_specifying
    Boolean? heavy_labeled_peptide
    Boolean? num_fix_start
    Boolean? num_fix_identified
    Boolean? ratio_setfix_light
    Boolean? ratio_setfix_heavy
    Boolean? n_metabolic_labeling
    Boolean? nmetabolic_labeling_ignore
    Boolean? c_metabolic_normal
    Boolean? c_metabolic_c
    Boolean? charge_range_extract
    Boolean? num_minimum_number
    Boolean? num_number_add
    Boolean? num_where_num
    Boolean? also_export_intensities
    Boolean? label_free_stats
    Boolean? path_path_mzxml
    Boolean? force_reported_endpoints
    String? xml_file
  }
  command <<<
    XPressPeptideParser \
      ~{xml_file} \
      ~{true="-m" false="" num_change_default} \
      ~{true="-a" false="" tolerance_specified_m} \
      ~{true="-n" false="" strnum_when_specifying} \
      ~{true="-b" false="" heavy_labeled_peptide} \
      ~{true="-f" false="" num_fix_start} \
      ~{true="-F" false="" num_fix_identified} \
      ~{true="-L" false="" ratio_setfix_light} \
      ~{true="-H" false="" ratio_setfix_heavy} \
      ~{true="-M" false="" n_metabolic_labeling} \
      ~{true="-N" false="" nmetabolic_labeling_ignore} \
      ~{true="-O" false="" c_metabolic_normal} \
      ~{true="-P" false="" c_metabolic_c} \
      ~{true="-C" false="" charge_range_extract} \
      ~{true="-c" false="" num_minimum_number} \
      ~{true="-p" false="" num_number_add} \
      ~{true="-q" false="" num_where_num} \
      ~{true="-i" false="" also_export_intensities} \
      ~{true="-l" false="" label_free_stats} \
      ~{true="-d" false="" path_path_mzxml} \
      ~{true="-E" false="" force_reported_endpoints}
  >>>
  parameter_meta {
    num_change_default: "<num>    change XPRESS mass tolerance (default=0.5000)"
    tolerance_specified_m: "tolerance specified by -m is in ppm (default=Daltons)"
    strnum_when_specifying: "<str>,<num>   when specifying multiple isotopic labels, use this option e.g. -nK,6.0 -nR,10.0 also use 'n' for labeled n-terminus and 'c' for c-terminus default residue 'C' and mass '9.0000'"
    heavy_labeled_peptide: "heavy labeled peptide elutes before light labeled partner"
    num_fix_start: "<num>    fix elution peak as +-<num> scans from start scan, default=5"
    num_fix_identified: "<num>    fix elution peak as +-<num> scans from identified peak apex, default=5"
    ratio_setfix_light: "for ratio, set/fix light to 1, vary heavy"
    ratio_setfix_heavy: "for ratio, set/fix heavy to 1, vary light"
    n_metabolic_labeling: "for 15N metabolic labeling; ignore all other parameters, assume IDs are normal and quantify w/corresponding 15N heavy pair"
    nmetabolic_labeling_ignore: "for 15Nmetabolic labeling; ignore all other parameters, assume IDs are 15N heavy and quantify w/corresponding 14N light pair"
    c_metabolic_normal: "for 13C metabolic labeling; ignore all other parameters, assume IDs are normal and quantify w/corresponding 13C heavy pair"
    c_metabolic_c: "for 13C metabolic labeling; ignore all other parameters, assume IDs are 13C heavy and quantify w/corresponding 12C light pair"
    charge_range_extract: "<num>-<num>   charge range to extract labelfree chromatograms, valid only for label free mode"
    num_minimum_number: "<num>    minimum number of chromatogram points needed for quantitation (default=5)"
    num_number_add: "<num>    number of 13C isotopic peaks to add to precursor chromatogram (default=0)"
    num_where_num: "<num>    where <num> is minimum probability needed to quantify a peptide (default=0.5000)"
    also_export_intensities: "also export intensities and intensity based ratio"
    label_free_stats: "label free mode: stats on precursor ions only, no ratios only relevant label-free parameters are -m, -c, -C, and -p"
    path_path_mzxml: "<path>   path to mzXML file(s), if not in pepXML directory"
    force_reported_endpoints: "force reported endpoints to correspond to MS1 scans"
    xml_file: ""
  }
}