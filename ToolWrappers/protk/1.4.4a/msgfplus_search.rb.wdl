version 1.0

task MsgfplusSearchrb {
  input {
    File? replace_output
    File? explicitly_named_output
    Int? threads
    File? database
    String? enzyme
    String? var_mods
    String? fix_mods
    String? instrument
    Boolean? cleavage_semi
    Boolean? glyco
    Boolean? acetyl_n_term
    Boolean? methionine_o
    Boolean? carb_amido_methyl
    Int? precursor_ion_to_l
    String? precursor_ion_to_l_units
    Boolean? pep_xml
    Int? isotope_error_range
    Int? fragment_method
    Boolean? decoy_search
    Int? min_pep_length
    Int? max_pep_length
    Int? min_pep_charge
    Int? max_pep_charge
    Int? num_reported_matches
    Boolean? add_features
    Float? java_mem
    Int file_two_dot_mzm_l
  }
  command <<<
    msgfplus_search_rb \
      ~{file_two_dot_mzm_l} \
      ~{if (replace_output) then "--replace-output" else ""} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(var_mods) then ("--var-mods " +  '"' + var_mods + '"') else ""} \
      ~{if defined(fix_mods) then ("--fix-mods " +  '"' + fix_mods + '"') else ""} \
      ~{if defined(instrument) then ("--instrument " +  '"' + instrument + '"') else ""} \
      ~{if (cleavage_semi) then "--cleavage-semi" else ""} \
      ~{if (glyco) then "--glyco" else ""} \
      ~{if (acetyl_n_term) then "--acetyl-nterm" else ""} \
      ~{if (methionine_o) then "--methionineo" else ""} \
      ~{if (carb_amido_methyl) then "--carbamidomethyl" else ""} \
      ~{if defined(precursor_ion_to_l) then ("--precursor-ion-tol " +  '"' + precursor_ion_to_l + '"') else ""} \
      ~{if defined(precursor_ion_to_l_units) then ("--precursor-ion-tol-units " +  '"' + precursor_ion_to_l_units + '"') else ""} \
      ~{if (pep_xml) then "--pepxml" else ""} \
      ~{if defined(isotope_error_range) then ("--isotope-error-range " +  '"' + isotope_error_range + '"') else ""} \
      ~{if defined(fragment_method) then ("--fragment-method " +  '"' + fragment_method + '"') else ""} \
      ~{if (decoy_search) then "--decoy-search" else ""} \
      ~{if defined(min_pep_length) then ("--min-pep-length " +  '"' + min_pep_length + '"') else ""} \
      ~{if defined(max_pep_length) then ("--max-pep-length " +  '"' + max_pep_length + '"') else ""} \
      ~{if defined(min_pep_charge) then ("--min-pep-charge " +  '"' + min_pep_charge + '"') else ""} \
      ~{if defined(max_pep_charge) then ("--max-pep-charge " +  '"' + max_pep_charge + '"') else ""} \
      ~{if defined(num_reported_matches) then ("--num-reported-matches " +  '"' + num_reported_matches + '"') else ""} \
      ~{if (add_features) then "--add-features" else ""} \
      ~{if defined(java_mem) then ("--java-mem " +  '"' + java_mem + '"') else ""}
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
    cleavage_semi: "Search for peptides with up to 1 non-enzymatic cleavage site [false]"
    glyco: "Expect N-Glycosylation modifications as variable mod in a search or as a parameter when building statistical models [false]"
    acetyl_n_term: "Expect N-terminal acetylation as a variable mod in a search or as a parameter when building statistical models [false]"
    methionine_o: "Expect Oxidised Methionine modifications as variable mod in a search [false]"
    carb_amido_methyl: "Expect Carbamidomethyl C modifications as fixed mod in a search [false]"
    precursor_ion_to_l: "Precursor ion mass tolerance. [20]"
    precursor_ion_to_l_units: "Precursor ion mass tolerance units (ppm or Da). [ppm]"
    pep_xml: "Convert results to pepxml. [false]"
    isotope_error_range: "Takes into account of the error introduced by chooosing a non-monoisotopic peak for fragmentation. [0,1]"
    fragment_method: "Fragment method 0: As written in the spectrum or CID if no info (Default), 1: CID, 2: ETD, 3: HCD, 4: Merge spectra from the same precursor [0]"
    decoy_search: "Build and search a decoy database on the fly. Input db should not contain decoys if this option is used [false]"
    min_pep_length: "Minimum peptide length to consider [6]"
    max_pep_length: "Maximum peptide length to consider [40]"
    min_pep_charge: "Minimum precursor charge to consider if charges are not specified in the spectrum file [2]"
    max_pep_charge: "Maximum precursor charge to consider if charges are not specified in the spectrum file [3]"
    num_reported_matches: "Number of matches per spectrum to be reported, Default: 1 [1]"
    add_features: "output additional features [false]"
    java_mem: "Java memory limit when running the search (Default 3.5Gb) [3500M]"
    file_two_dot_mzm_l: ""
  }
  output {
    File out_stdout = stdout()
    File out_replace_output = "${in_replace_output}"
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}