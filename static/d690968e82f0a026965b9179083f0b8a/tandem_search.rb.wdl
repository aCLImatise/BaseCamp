version 1.0

task TandemSearchrb {
  input {
    File? replace_output
    File? explicitly_named_output
    Int? threads
    File? database
    String? enzyme
    String? var_mods
    String? fix_mods
    String? fragment_ion_to_l_units
    String? precursor_ion_to_l_units
    Float? fragment_ion_to_l
    Int? precursor_ion_to_l
    Int? num_missed_cleavages
    Boolean? cleavage_semi
    Boolean? multi_isotope_search
    Boolean? glyco
    Boolean? acetyl_n_term
    Boolean? methionine_o
    File? tandem_params
    Boolean? keep_params_files
    File? output_spectra
    Int file_two_dot_mzm_l
  }
  command <<<
    tandem_search_rb \
      ~{file_two_dot_mzm_l} \
      ~{if (replace_output) then "--replace-output" else ""} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(var_mods) then ("--var-mods " +  '"' + var_mods + '"') else ""} \
      ~{if defined(fix_mods) then ("--fix-mods " +  '"' + fix_mods + '"') else ""} \
      ~{if defined(fragment_ion_to_l_units) then ("--fragment-ion-tol-units " +  '"' + fragment_ion_to_l_units + '"') else ""} \
      ~{if defined(precursor_ion_to_l_units) then ("--precursor-ion-tol-units " +  '"' + precursor_ion_to_l_units + '"') else ""} \
      ~{if defined(fragment_ion_to_l) then ("--fragment-ion-tol " +  '"' + fragment_ion_to_l + '"') else ""} \
      ~{if defined(precursor_ion_to_l) then ("--precursor-ion-tol " +  '"' + precursor_ion_to_l + '"') else ""} \
      ~{if defined(num_missed_cleavages) then ("--num-missed-cleavages " +  '"' + num_missed_cleavages + '"') else ""} \
      ~{if (cleavage_semi) then "--cleavage-semi" else ""} \
      ~{if (multi_isotope_search) then "--multi-isotope-search" else ""} \
      ~{if (glyco) then "--glyco" else ""} \
      ~{if (acetyl_n_term) then "--acetyl-nterm" else ""} \
      ~{if (methionine_o) then "--methionineo" else ""} \
      ~{if defined(tandem_params) then ("--tandem-params " +  '"' + tandem_params + '"') else ""} \
      ~{if (keep_params_files) then "--keep-params-files" else ""} \
      ~{if (output_spectra) then "--output-spectra" else ""}
  >>>
  parameter_meta {
    replace_output: "Dont skip analyses for which the output file already exists [false]"
    explicitly_named_output: "An explicitly named output file."
    threads: "Number of processing threads to use. Set to 0 to autodetect an appropriate value [1]"
    database: "Specify the database to use for this search. Can be a named protk database or the path to a fasta file [sphuman]"
    enzyme: "Enzyme [Trypsin]"
    var_mods: "Variable modifications. These should be provided in a comma separated list"
    fix_mods: "Fixed modifications. These should be provided in a comma separated list"
    fragment_ion_to_l_units: "Fragment ion mass tolerance units (Da or mmu). [Da]"
    precursor_ion_to_l_units: "Precursor ion mass tolerance units (ppm or Da). [ppm]"
    fragment_ion_to_l: "Fragment ion mass tolerance (unit dependent). [0.65]"
    precursor_ion_to_l: "Precursor ion mass tolerance. [200]"
    num_missed_cleavages: "Number of missed cleavages allowed [2]"
    cleavage_semi: "Search for peptides with up to 1 non-enzymatic cleavage site [false]"
    multi_isotope_search: "Expand parent mass window to include windows around neighbouring isotopic peaks [false]"
    glyco: "Expect N-Glycosylation modifications as variable mod in a search or as a parameter when building statistical models [false]"
    acetyl_n_term: "Expect N-terminal acetylation as a variable mod in a search or as a parameter when building statistical models [false]"
    methionine_o: "Expect Oxidised Methionine modifications as variable mod in a search [false]"
    tandem_params: "Either the full path to an xml file containing a complete set of default parameters, or one of the following (isb_native,isb_kscore,gpm). Default is isb_native [isb_native]"
    keep_params_files: "Keep X!Tandem parameter files [false]"
    output_spectra: "Include spectra in the output file [false]"
    file_two_dot_mzm_l: ""
  }
  output {
    File out_stdout = stdout()
    File out_replace_output = "${in_replace_output}"
    File out_explicitly_named_output = "${in_explicitly_named_output}"
    File out_output_spectra = "${in_output_spectra}"
  }
}