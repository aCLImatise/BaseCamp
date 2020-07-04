version 1.0

task EncyclopeDIA {
  input {
    Boolean? input_dia_file
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
      ~{true="-i" false="" input_dia_file} \
      ~{true="-f" false="" protein_fasta_database} \
      ~{true="-l" false="" library_elib_file} \
      ~{if defined(walnut) then ("-walnut " +  '"' + walnut + '"') else ""} \
      ~{true="-browser" false="" browser} \
      ~{true="-libexport" false="" lib_export} \
      ~{true="-convert" false="" convert} \
      ~{true="-o" false="" output_report_file} \
      ~{true="-acquisition" false="" acquisition} \
      ~{true="-enzyme" false="" enzyme} \
      ~{true="-expectedPeakWidth" false="" expected_peak_width} \
      ~{true="-filterPeaklists" false="" filter_peak_lists} \
      ~{true="-fixed" false="" fixed} \
      ~{true="-foffset" false="" f_offset} \
      ~{true="-frag" false="" frag} \
      ~{true="-ftol" false="" f_to_l} \
      ~{true="-ftolunits" false="" f_to_l_units} \
      ~{true="-lftol" false="" lf_to_l} \
      ~{true="-lftolunits" false="" lf_to_l_units} \
      ~{true="-localizationModification" false="" localization_modification} \
      ~{true="-minIntensity" false="" min_intensity} \
      ~{true="-minNumOfQuantitativePeaks" false="" min_num_of_quantitative_peaks} \
      ~{true="-minQuantitativeIonNumber" false="" min_quantitative_ion_number} \
      ~{true="-numberOfExtraDecoyLibrariesSearche" false="" number_of_extra_decoy_libraries_search_e} \
      ~{true="-numberOfQuantitativePeaks" false="" number_of_quantitative_peaks} \
      ~{true="-percolatorProteinThreshold" false="" percolator_protein_threshold} \
      ~{true="-percolatorThreshold" false="" percolator_threshold} \
      ~{true="-percolatorTrainingFDR" false="" percolator_training_fdr} \
      ~{true="-percolatorTrainingSetSize" false="" percolator_training_set_size} \
      ~{true="-percolatorVersionNumber" false="" percolator_version_number} \
      ~{true="-poffset" false="" p_offset} \
      ~{true="-precursorIsolationMargin" false="" precursor_isolation_margin} \
      ~{true="-precursorWindowSize" false="" precursor_window_size} \
      ~{true="-ptol" false="" pto_l} \
      ~{true="-ptolunits" false="" pto_l_units} \
      ~{true="-rtWindowInMin" false="" rt_window_in_min} \
      ~{true="-scoringBreadthType" false="" scoring_breadth_type} \
      ~{true="-verifyModificationIons" false="" verify_modification_ions}
  >>>
  parameter_meta {
    input_dia_file: "input .DIA or .MZML file"
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
}