version 1.0

task MetaProSIP {
  input {
    File? in_mzm_l
    File? in_fast_a
    File? out_csv
    File? out_peptide_centric_csv
    File? in_feature_xml
    File? r_executable
    String? mz_tolerance_ppm
    String? rt_tolerance_s
    String? intensity_threshold
    String? correlation_threshold
    String? xic_threshold
    String? decomposition_threshold
    String? weight_merge_window
    String? plot_extension
    Directory? qc_output_directory
    String? labeling_element
    Boolean? use_unassigned_ids
    Boolean? use_averag_in_e_ids
    Boolean? report_natural_peptides
    Boolean? filter_mono_isotopic
    Boolean? cluster
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MetaProSIP \
      ~{if defined(in_mzm_l) then ("-in_mzML " +  '"' + in_mzm_l + '"') else ""} \
      ~{if defined(in_fast_a) then ("-in_fasta " +  '"' + in_fast_a + '"') else ""} \
      ~{if defined(out_csv) then ("-out_csv " +  '"' + out_csv + '"') else ""} \
      ~{if defined(out_peptide_centric_csv) then ("-out_peptide_centric_csv " +  '"' + out_peptide_centric_csv + '"') else ""} \
      ~{if defined(in_feature_xml) then ("-in_featureXML " +  '"' + in_feature_xml + '"') else ""} \
      ~{if defined(r_executable) then ("-r_executable " +  '"' + r_executable + '"') else ""} \
      ~{if defined(mz_tolerance_ppm) then ("-mz_tolerance_ppm " +  '"' + mz_tolerance_ppm + '"') else ""} \
      ~{if defined(rt_tolerance_s) then ("-rt_tolerance_s " +  '"' + rt_tolerance_s + '"') else ""} \
      ~{if defined(intensity_threshold) then ("-intensity_threshold " +  '"' + intensity_threshold + '"') else ""} \
      ~{if defined(correlation_threshold) then ("-correlation_threshold " +  '"' + correlation_threshold + '"') else ""} \
      ~{if defined(xic_threshold) then ("-xic_threshold " +  '"' + xic_threshold + '"') else ""} \
      ~{if defined(decomposition_threshold) then ("-decomposition_threshold " +  '"' + decomposition_threshold + '"') else ""} \
      ~{if defined(weight_merge_window) then ("-weight_merge_window " +  '"' + weight_merge_window + '"') else ""} \
      ~{if defined(plot_extension) then ("-plot_extension " +  '"' + plot_extension + '"') else ""} \
      ~{if defined(qc_output_directory) then ("-qc_output_directory " +  '"' + qc_output_directory + '"') else ""} \
      ~{if defined(labeling_element) then ("-labeling_element " +  '"' + labeling_element + '"') else ""} \
      ~{true="-use_unassigned_ids" false="" use_unassigned_ids} \
      ~{true="-use_averagine_ids" false="" use_averag_in_e_ids} \
      ~{true="-report_natural_peptides" false="" report_natural_peptides} \
      ~{true="-filter_monoisotopic" false="" filter_mono_isotopic} \
      ~{true="-cluster" false="" cluster} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in_mzm_l: "*                  Centroided MS1 data (valid formats: 'mzML')"
    in_fast_a: "*                 Protein sequence database (valid formats: 'fasta')"
    out_csv: "*                  Column separated file with feature fitting result. (valid formats: 'csv')"
    out_peptide_centric_csv: "*  Column separated file with peptide centric result. (valid formats: 'csv')"
    in_feature_xml: "*            Feature data annotated with identifications (IDMapper) (valid formats: 'featureXML')"
    r_executable: "Path to the R executable (default: 'R')"
    mz_tolerance_ppm: "Tolerance in ppm (default: '10.0')"
    rt_tolerance_s: "Rolerance window around feature rt for XIC extraction (default: '30.0')"
    intensity_threshold: "Intensity threshold to collect peaks in the MS1 spectrum. (default: '10.0')"
    correlation_threshold: "Correlation threshold for reporting a RIA (default: '0.7')"
    xic_threshold: "Minimum correlation to mono-isotopic peak for retaining a higher isotopic peak. If featureXML from reference file is used it should be disabled (set to -1) as no mono-isotopic peak is expected to be present. (default: '0.7')"
    decomposition_threshold: "Minimum R-squared of decomposition that must be achieved for a peptide to be reported. (default: '0.7')"
    weight_merge_window: "Decomposition coefficients within +- this rate window will be combined (default: '5.0')"
    plot_extension: "Extension used for plots (png|svg|pdf). (default: 'png' valid: 'png', 'svg', 'pdf')"
    qc_output_directory: "Output directory for the quality report"
    labeling_element: "Which element (single letter code) is labeled. (default: 'C' valid: 'C', 'N', 'H', 'O')"
    use_unassigned_ids: "Include identifications not assigned to a feature in pattern detection."
    use_averag_in_e_ids: "Use averagine peptides as model to perform pattern detection on unidentified peptides."
    report_natural_peptides: "Whether purely natural peptides are reported in the quality report."
    filter_mono_isotopic: "Try to filter out mono-isotopic patterns to improve detection of low RIA patterns"
    cluster: "Perform grouping"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}