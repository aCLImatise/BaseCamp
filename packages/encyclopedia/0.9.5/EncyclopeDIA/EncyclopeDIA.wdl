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
    Boolean? filter_peak_lists
    Boolean? frag
    Boolean? f_to_l_units
    Boolean? lf_to_l_units
    Boolean? localization_modification
    Boolean? min_intensity
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
      ~{if (filter_peak_lists) then "-filterPeaklists" else ""} \
      ~{if (frag) then "-frag" else ""} \
      ~{if (f_to_l_units) then "-ftolunits" else ""} \
      ~{if (lf_to_l_units) then "-lftolunits" else ""} \
      ~{if (localization_modification) then "-localizationModification" else ""} \
      ~{if (min_intensity) then "-minIntensity" else ""} \
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
    filter_peak_lists: "(default: false)"
    frag: "(default: CID)"
    f_to_l_units: "(default: ppm)"
    lf_to_l_units: "(default: ppm)"
    localization_modification: "(default: none)"
    min_intensity: "(default: -1.0)"
    pto_l_units: "(default: ppm)"
    rt_window_in_min: "(default: -1.0)"
    scoring_breadth_type: "(default: window)"
    verify_modification_ions: "(default: true)"
  }
  output {
    File out_stdout = stdout()
  }
}