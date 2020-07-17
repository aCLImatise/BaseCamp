version 1.0

task Sqt2XML {
  input {
    String? where_enzyme_trypsin
    File file_path_to_sqt_file
  }
  command <<<
    Sqt2XML \
      ~{file_path_to_sqt_file} \
      ~{if defined(where_enzyme_trypsin) then ("-E " +  '"' + where_enzyme_trypsin + '"') else ""}
  >>>
  parameter_meta {
    where_enzyme_trypsin: "Where <enzyme> is:  trypsin - Cut: KR, No Cut: P, Sense: C-term (default) stricttrypsin - Cut: KR, No Cut: none, Sense: C-term  argc - Cut: R, No Cut: P, Sense: C-term  aspn - Cut: D, No Cut: none, Sense: N-term  chymotrypsin - Cut: YWFM, No Cut: P, Sense: C-term  cnbr - Cut: M, No Cut: P, Sense: C-term  elastase - Cut: GVLIA, No Cut: P, Sense: C-term  formicacid - Cut: D, No Cut: P, Sense: C-term  gluc - Cut: DE, No Cut: P, Sense: C-term  gluc_bicarb - Cut: E, No Cut: P, Sense: C-term  iodosobenzoate - Cut: W, No Cut: terminal, Sense: C-term  lysc - Cut: K, No Cut: P, Sense: C-term  lysc-p - Cut: K, No Cut: none, Sense: C-term  lysn - Cut: K, No Cut: none, Sense: N-term  lysn_promisc - Cut: KR, No Cut: none, Sense: N-term  nonspecific - Cut: all, No Cut: none, Sense: N/A  pepsina - Cut: FL, No Cut: terminal, Sense: C-term  protein_endopeptidase - Cut: P, No Cut: terminal, Sense: C-term  staph_protease - Cut: E, No Cut: terminal, Sense: C-term  tca - Cut: KR, No Cut: P, Sense: C-term  - Cut: YWFM, No Cut: P, Sense: C-term  - Cut: D, No Cut: none, Sense: N-term  trypsin/cnbr - Cut: KR, No Cut: P, Sense: C-term  trypsin_gluc - Cut: DEKR, No Cut: P, Sense: C-term  trypsin_k - Cut: K, No Cut: P, Sense: C-term  trypsin_r - Cut: R, No Cut: P, Sense: C-term "
    file_path_to_sqt_file: ""
  }
}