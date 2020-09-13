version 1.0

task EncyclopeDIA {
  input {
    Boolean? input_dia_mzml
    Boolean? protein_fasta_database
    Boolean? library_elib_file
    String? walnut
    Boolean? browser
    Boolean? lib_export
    Boolean? convert
    Boolean? output_report_file
    Boolean? acquisition
    Boolean? enzyme
    Boolean? expected_peak_width
    Boolean? filter_peak_lists
    Boolean? fixed
    Boolean? f_offset
    Boolean? frag
    Boolean? f_to_l
    Boolean? f_to_l_units
    Boolean? lf_to_l
    Boolean? lf_to_l_units
    Boolean? localization_modification
    Boolean? min_intensity
    Boolean? min_num_of_quantitative_peaks
    Boolean? min_quantitative_ion_number
    Boolean? number_of_extra_decoy_libraries_search_e
    Boolean? number_of_quantitative_peaks
    Boolean? percolator_protein_threshold
    Boolean? percolator_threshold
    Boolean? percolator_training_fdr
    Boolean? percolator_training_set_size
    Boolean? percolator_version_number
    Boolean? p_offset
    Boolean? precursor_isolation_margin
    Boolean? precursor_window_size
    Boolean? pto_l
    Boolean? pto_l_units
    Boolean? rt_window_in_min
    Boolean? scoring_breadth_type
    Boolean? verify_modification_ions
  }
  command <<<
    EncyclopeDIA \
      ~{if (input_dia_mzml) then "-i" else ""} \
      ~{if (protein_fasta_database) then "-f" else ""} \
      ~{if (library_elib_file) then "-l" else ""} \
      ~{if defined(walnut) then ("-walnut " +  '"' + walnut + '"') else ""} \
      ~{if (browser) then "-browser" else ""} \
      ~{if (lib_export) then "-libexport" else ""} \
      ~{if (convert) then "-convert" else ""} \
      ~{if (output_report_file) then "-o" else ""} \
      ~{if (acquisition) then "-acquisition" else ""} \
      ~{if (enzyme) then "-enzyme" else ""} \
      ~{if (expected_peak_width) then "-expectedPeakWidth" else ""} \
      ~{if (filter_peak_lists) then "-filterPeaklists" else ""} \
      ~{if (fixed) then "-fixed" else ""} \
      ~{if (f_offset) then "-foffset" else ""} \
      ~{if (frag) then "-frag" else ""} \
      ~{if (f_to_l) then "-ftol" else ""} \
      ~{if (f_to_l_units) then "-ftolunits" else ""} \
      ~{if (lf_to_l) then "-lftol" else ""} \
      ~{if (lf_to_l_units) then "-lftolunits" else ""} \
      ~{if (localization_modification) then "-localizationModification" else ""} \
      ~{if (min_intensity) then "-minIntensity" else ""} \
      ~{if (min_num_of_quantitative_peaks) then "-minNumOfQuantitativePeaks" else ""} \
      ~{if (min_quantitative_ion_number) then "-minQuantitativeIonNumber" else ""} \
      ~{if (number_of_extra_decoy_libraries_search_e) then "-numberOfExtraDecoyLibrariesSearche" else ""} \
      ~{if (number_of_quantitative_peaks) then "-numberOfQuantitativePeaks" else ""} \
      ~{if (percolator_protein_threshold) then "-percolatorProteinThreshold" else ""} \
      ~{if (percolator_threshold) then "-percolatorThreshold" else ""} \
      ~{if (percolator_training_fdr) then "-percolatorTrainingFDR" else ""} \
      ~{if (percolator_training_set_size) then "-percolatorTrainingSetSize" else ""} \
      ~{if (percolator_version_number) then "-percolatorVersionNumber" else ""} \
      ~{if (p_offset) then "-poffset" else ""} \
      ~{if (precursor_isolation_margin) then "-precursorIsolationMargin" else ""} \
      ~{if (precursor_window_size) then "-precursorWindowSize" else ""} \
      ~{if (pto_l) then "-ptol" else ""} \
      ~{if (pto_l_units) then "-ptolunits" else ""} \
      ~{if (rt_window_in_min) then "-rtWindowInMin" else ""} \
      ~{if (scoring_breadth_type) then "-scoringBreadthType" else ""} \
      ~{if (verify_modification_ions) then "-verifyModificationIons" else ""}
  >>>
  parameter_meta {
    input_dia_mzml: "input .DIA or .MZML file"
    protein_fasta_database: "protein .FASTA database"
    library_elib_file: "library .ELIB file"
    walnut: "Walnut FASTA search (use -walnut -h for help)"
    browser: "run ELIB Browser (use -browser -h for ELIB Browser help)"
    lib_export: "run Library Export (use -libexport -h for Library Export help)"
    convert: "run files converter (use -convert -h for help)"
    output_report_file: "output report file (default: [input file].encyclopedia.txt)"
    acquisition: "(default: DIA)"
    enzyme: "(default: trypsin)"
    expected_peak_width: "(default: 25)"
    filter_peak_lists: "(default: false)"
    fixed: "(default: C=57.0214635)"
    f_offset: "(default: 0)"
    frag: "(default: CID)"
    f_to_l: "(default: 10)"
    f_to_l_units: "(default: ppm)"
    lf_to_l: "(default: 10)"
    lf_to_l_units: "(default: ppm)"
    localization_modification: "(default: none)"
    min_intensity: "(default: -1.0)"
    min_num_of_quantitative_peaks: "(default: 3)"
    min_quantitative_ion_number: "(default: 3)"
    number_of_extra_decoy_libraries_search_e: "(default: 0.0)"
    number_of_quantitative_peaks: "(default: 5)"
    percolator_protein_threshold: "(default: 0.01)"
    percolator_threshold: "(default: 0.01)"
    percolator_training_fdr: "(default: 0.0)"
    percolator_training_set_size: "(default: 200000)"
    percolator_version_number: "(default: 3)"
    p_offset: "(default: 0)"
    precursor_isolation_margin: "(default: 0)"
    precursor_window_size: "(default: -1)"
    pto_l: "(default: 10)"
    pto_l_units: "(default: ppm)"
    rt_window_in_min: "(default: -1.0)"
    scoring_breadth_type: "(default: window)"
    verify_modification_ions: "(default: true)"
  }
  output {
    File out_stdout = stdout()
  }
}