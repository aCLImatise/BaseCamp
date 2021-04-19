version 1.0

task EncyclopeDIA {
  input {
    Boolean? input_mzml_file
    Boolean? protein_fasta_database
    Boolean? library_elib_file
    String? walnut
    Boolean? thesaurus
    Boolean? browser
    Boolean? lib_export
    Boolean? convert
    Boolean? output_report_file
    Boolean? acquisition
    Boolean? enzyme
    Boolean? filter_peak_lists
    Boolean? fixed
    Boolean? frag
    Boolean? f_to_l_units
    Boolean? lf_to_l_units
    Boolean? localization_modification
    Boolean? min_intensity
    Boolean? precursor_window_size
    Boolean? pto_l_units
    Boolean? rt_window_in_min
    Boolean? scoring_breadth_type
    Boolean? top_n_targets_used
    Boolean? verify_modification_ions
    Boolean? quiet
  }
  command <<<
    EncyclopeDIA \
      ~{if (input_mzml_file) then "-i" else ""} \
      ~{if (protein_fasta_database) then "-f" else ""} \
      ~{if (library_elib_file) then "-l" else ""} \
      ~{if defined(walnut) then ("-walnut " +  '"' + walnut + '"') else ""} \
      ~{if (thesaurus) then "-thesaurus" else ""} \
      ~{if (browser) then "-browser" else ""} \
      ~{if (lib_export) then "-libexport" else ""} \
      ~{if (convert) then "-convert" else ""} \
      ~{if (output_report_file) then "-o" else ""} \
      ~{if (acquisition) then "-acquisition" else ""} \
      ~{if (enzyme) then "-enzyme" else ""} \
      ~{if (filter_peak_lists) then "-filterPeaklists" else ""} \
      ~{if (fixed) then "-fixed" else ""} \
      ~{if (frag) then "-frag" else ""} \
      ~{if (f_to_l_units) then "-ftolunits" else ""} \
      ~{if (lf_to_l_units) then "-lftolunits" else ""} \
      ~{if (localization_modification) then "-localizationModification" else ""} \
      ~{if (min_intensity) then "-minIntensity" else ""} \
      ~{if (precursor_window_size) then "-precursorWindowSize" else ""} \
      ~{if (pto_l_units) then "-ptolunits" else ""} \
      ~{if (rt_window_in_min) then "-rtWindowInMin" else ""} \
      ~{if (scoring_breadth_type) then "-scoringBreadthType" else ""} \
      ~{if (top_n_targets_used) then "-topNTargetsUsed" else ""} \
      ~{if (verify_modification_ions) then "-verifyModificationIons" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/encyclopedia:1.2.2--hdfd78af_0"
  }
  parameter_meta {
    input_mzml_file: "input .DIA or .MZML file"
    protein_fasta_database: "protein .FASTA database"
    library_elib_file: "library .ELIB file"
    walnut: "Walnut FASTA search (use -walnut -h for help)"
    thesaurus: "run Thesaurus localization search (use -thesaurus -h for help)"
    browser: "run ELIB Browser (use -browser -h for ELIB Browser help)"
    lib_export: "run Library Export (use -libexport -h for Library Export help)"
    convert: "run files converter (use -convert -h for help)"
    output_report_file: "output report file (default: [input file].encyclopedia.txt)"
    acquisition: "(default: DIA)"
    enzyme: "(default: trypsin)"
    filter_peak_lists: "(default: false)"
    fixed: "(default: C=57.0214635)"
    frag: "(default: CID)"
    f_to_l_units: "(default: ppm)"
    lf_to_l_units: "(default: ppm)"
    localization_modification: "(default: none)"
    min_intensity: "(default: -1.0)"
    precursor_window_size: "(default: -1)"
    pto_l_units: "(default: ppm)"
    rt_window_in_min: "(default: -1.0)"
    scoring_breadth_type: "(default: window)"
    top_n_targets_used: "(default: -1)"
    verify_modification_ions: "(default: true)"
    quiet: "suppress log output to stdout/stderr"
  }
  output {
    File out_stdout = stdout()
  }
}