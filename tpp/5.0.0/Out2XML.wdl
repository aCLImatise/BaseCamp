version 1.0

task Out2XML {
  input {
    Boolean? use_default_setting_specified
    Boolean? use_average_setting_specified
    Boolean? _maldi_mode
    Boolean? all
    Boolean? pi
    Boolean? path_including_path
    Boolean? enzyme_where_enzyme
    File path_to_directory_with_out_files
  }
  command <<<
    Out2XML \
      ~{path_to_directory_with_out_files} \
      ~{true="-m" false="" use_default_setting_specified} \
      ~{true="-a" false="" use_average_setting_specified} \
      ~{true="-M" false="" _maldi_mode} \
      ~{true="-all" false="" all} \
      ~{true="-pI" false="" pi} \
      ~{true="-P" false="" path_including_path} \
      ~{true="-E" false="" enzyme_where_enzyme}
  >>>
  parameter_meta {
    use_default_setting_specified: ": use monoisotopic precursor weight (default: setting specified in sequest.params)"
    use_average_setting_specified: ": use average precursor weight (default: setting specified in sequest.params)"
    _maldi_mode: ": maldi mode"
    all: ": output all peptides, don't filter out X containing peptides "
    pi: ": compute and report peptide pI's "
    path_including_path: "<path to -including- sequest.params file>: (default) <path to directory with out files>/sequest.params "
    enzyme_where_enzyme: "<enzyme>  Where <enzyme> is:  trypsin - Cut: KR, No Cut: P, Sense: C-term (default) ralphtrypsin - Cut: STKR, No Cut: P, Sense: C-term  stricttrypsin - Cut: KR, No Cut: none, Sense: C-term  argc - Cut: R, No Cut: P, Sense: C-term  aspn - Cut: D, No Cut: none, Sense: N-term  chymotrypsin - Cut: YWFM, No Cut: P, Sense: C-term  cnbr - Cut: M, No Cut: P, Sense: C-term  elastase - Cut: GVLIA, No Cut: P, Sense: C-term  formicacid - Cut: D, No Cut: P, Sense: C-term  gluc - Cut: DE, No Cut: P, Sense: C-term  gluc_bicarb - Cut: E, No Cut: P, Sense: C-term  iodosobenzoate - Cut: W, No Cut: terminal, Sense: C-term  lysc - Cut: K, No Cut: P, Sense: C-term  lysc-p - Cut: K, No Cut: none, Sense: C-term  lysn - Cut: K, No Cut: none, Sense: N-term  lysn_promisc - Cut: KR, No Cut: none, Sense: N-term  nonspecific - Cut: all, No Cut: none, Sense: N/A  pepsina - Cut: FL, No Cut: terminal, Sense: C-term  protein_endopeptidase - Cut: P, No Cut: terminal, Sense: C-term  staph_protease - Cut: E, No Cut: terminal, Sense: C-term  tca - Cut: KR, No Cut: P, Sense: C-term  - Cut: YWFM, No Cut: P, Sense: C-term  - Cut: D, No Cut: none, Sense: N-term  trypsin/cnbr - Cut: KR, No Cut: P, Sense: C-term  trypsin_gluc - Cut: DEKR, No Cut: P, Sense: C-term  trypsin_k - Cut: K, No Cut: P, Sense: C-term  trypsin_r - Cut: R, No Cut: P, Sense: C-term "
    path_to_directory_with_out_files: ""
  }
}