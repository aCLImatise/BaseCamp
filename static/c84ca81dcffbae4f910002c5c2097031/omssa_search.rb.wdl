version 1.0

task OmssaSearchrb {
  input {
    File? replace_output
    File? explicitly_named_output
    Int? threads
    File? database
    String? enzyme
    String? var_mods
    String? fix_mods
    String? instrument
    String? fragment_ion_to_l_units
    String? precursor_ion_to_l_units
    Float? fragment_ion_to_l
    Int? precursor_ion_to_l
    String? search_type
    Int? num_missed_cleavages
    Boolean? respect_charges
    String? searched_ions
    Int? num_peaks_for_multi_isotope_search
    Boolean? glyco
    Boolean? methionine_o
    Boolean? carb_amido_methyl
    Boolean? no_add_retention_times
    Int? max_hit_expect
    Float? intensity_cut_off
    File? galaxy_index_dir
    File? omx_output
    File? log_file
    Int file_two_do_tmgf
  }
  command <<<
    omssa_search_rb \
      ~{file_two_do_tmgf} \
      ~{if (replace_output) then "--replace-output" else ""} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(var_mods) then ("--var-mods " +  '"' + var_mods + '"') else ""} \
      ~{if defined(fix_mods) then ("--fix-mods " +  '"' + fix_mods + '"') else ""} \
      ~{if defined(instrument) then ("--instrument " +  '"' + instrument + '"') else ""} \
      ~{if defined(fragment_ion_to_l_units) then ("--fragment-ion-tol-units " +  '"' + fragment_ion_to_l_units + '"') else ""} \
      ~{if defined(precursor_ion_to_l_units) then ("--precursor-ion-tol-units " +  '"' + precursor_ion_to_l_units + '"') else ""} \
      ~{if defined(fragment_ion_to_l) then ("--fragment-ion-tol " +  '"' + fragment_ion_to_l + '"') else ""} \
      ~{if defined(precursor_ion_to_l) then ("--precursor-ion-tol " +  '"' + precursor_ion_to_l + '"') else ""} \
      ~{if defined(search_type) then ("--search-type " +  '"' + search_type + '"') else ""} \
      ~{if defined(num_missed_cleavages) then ("--num-missed-cleavages " +  '"' + num_missed_cleavages + '"') else ""} \
      ~{if (respect_charges) then "--respect-charges" else ""} \
      ~{if defined(searched_ions) then ("--searched-ions " +  '"' + searched_ions + '"') else ""} \
      ~{if defined(num_peaks_for_multi_isotope_search) then ("--num-peaks-for-multi-isotope-search " +  '"' + num_peaks_for_multi_isotope_search + '"') else ""} \
      ~{if (glyco) then "--glyco" else ""} \
      ~{if (methionine_o) then "--methionineo" else ""} \
      ~{if (carb_amido_methyl) then "--carbamidomethyl" else ""} \
      ~{if (no_add_retention_times) then "--no-add-retention-times" else ""} \
      ~{if defined(max_hit_expect) then ("--max-hit-expect " +  '"' + max_hit_expect + '"') else ""} \
      ~{if defined(intensity_cut_off) then ("--intensity-cut-off " +  '"' + intensity_cut_off + '"') else ""} \
      ~{if defined(galaxy_index_dir) then ("--galaxy-index-dir " +  '"' + galaxy_index_dir + '"') else ""} \
      ~{if defined(omx_output) then ("--omx-output " +  '"' + omx_output + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    replace_output: "Dont skip analyses for which the output file already exists [false]"
    explicitly_named_output: "An explicitly named output file."
    threads: "Number of processing threads to use. Set to 0 to autodetect an appropriate value [1]"
    database: "Specify the database to use for this search. Can be a named protk database or the path to a fasta file [sphuman]"
    enzyme: "Enzyme [Trypsin]"
    var_mods: "Variable modifications. These should be provided in a comma separated list"
    fix_mods: "Fixed modifications. These should be provided in a comma separated list"
    instrument: "Instrument [ESI-QUAD-TOF]"
    fragment_ion_to_l_units: "Fragment ion mass tolerance units (Da or mmu). [Da]"
    precursor_ion_to_l_units: "Precursor ion mass tolerance units (ppm or Da). [ppm]"
    fragment_ion_to_l: "Fragment ion mass tolerance (unit dependent). [0.65]"
    precursor_ion_to_l: "Precursor ion mass tolerance. [200]"
    search_type: "Use monoisotopic or average precursor masses. (monoisotopic or average) [monoisotopic]"
    num_missed_cleavages: "Number of missed cleavages allowed [2]"
    respect_charges: "Dont respect charges in the input file. Instead impute them by trying various options [false]"
    searched_ions: "Ion series to search"
    num_peaks_for_multi_isotope_search: "Number of peaks to include in multi-isotope search [0]"
    glyco: "Expect N-Glycosylation modifications as variable mod in a search or as a parameter when building statistical models [false]"
    methionine_o: "Expect Oxidised Methionine modifications as variable mod in a search [false]"
    carb_amido_methyl: "Expect Carbamidomethyl C modifications as fixed mod in a search [false]"
    no_add_retention_times: "Don't post process the output to add retention times [true]"
    max_hit_expect: "Expect values less than this are considered to be hits [1]"
    intensity_cut_off: "Peak intensity cut-off as a fraction of maximum peak intensity [0.0005]"
    galaxy_index_dir: "Specify galaxy index directory, will search for mods file there."
    omx_output: "Specify path for additional OMX output (optional)."
    log_file: "Send OMSSA stdout to a logfile"
    file_two_do_tmgf: ""
  }
  output {
    File out_stdout = stdout()
    File out_replace_output = "${in_replace_output}"
    File out_explicitly_named_output = "${in_explicitly_named_output}"
    File out_omx_output = "${in_omx_output}"
  }
}