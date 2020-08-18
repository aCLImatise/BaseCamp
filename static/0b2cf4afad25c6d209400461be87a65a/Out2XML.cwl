class: CommandLineTool
id: ../../../Out2XML.cwl
inputs:
- id: use_default_setting_specified
  doc: ': use monoisotopic precursor weight (default: setting specified in sequest.params)'
  type: boolean
  inputBinding:
    prefix: -m
- id: use_average_setting_specified
  doc: ': use average precursor weight (default: setting specified in sequest.params)'
  type: boolean
  inputBinding:
    prefix: -a
- id: _maldi_mode
  doc: ': maldi mode'
  type: boolean
  inputBinding:
    prefix: -M
- id: all
  doc: ": output all peptides, don't filter out X containing peptides "
  type: boolean
  inputBinding:
    prefix: -all
- id: pi
  doc: ": compute and report peptide pI's "
  type: boolean
  inputBinding:
    prefix: -pI
- id: path_including_path
  doc: '<path to -including- sequest.params file>: (default) <path to directory with
    out files>/sequest.params '
  type: boolean
  inputBinding:
    prefix: -P
- id: enzyme_where_enzyme
  doc: '<enzyme>  Where <enzyme> is:  trypsin - Cut: KR, No Cut: P, Sense: C-term
    (default) ralphtrypsin - Cut: STKR, No Cut: P, Sense: C-term  stricttrypsin -
    Cut: KR, No Cut: none, Sense: C-term  argc - Cut: R, No Cut: P, Sense: C-term  aspn
    - Cut: D, No Cut: none, Sense: N-term  chymotrypsin - Cut: YWFM, No Cut: P, Sense:
    C-term  cnbr - Cut: M, No Cut: P, Sense: C-term  elastase - Cut: GVLIA, No Cut:
    P, Sense: C-term  formicacid - Cut: D, No Cut: P, Sense: C-term  gluc - Cut: DE,
    No Cut: P, Sense: C-term  gluc_bicarb - Cut: E, No Cut: P, Sense: C-term  iodosobenzoate
    - Cut: W, No Cut: terminal, Sense: C-term  lysc - Cut: K, No Cut: P, Sense: C-term  lysc-p
    - Cut: K, No Cut: none, Sense: C-term  lysn - Cut: K, No Cut: none, Sense: N-term  lysn_promisc
    - Cut: KR, No Cut: none, Sense: N-term  nonspecific - Cut: all, No Cut: none,
    Sense: N/A  pepsina - Cut: FL, No Cut: terminal, Sense: C-term  protein_endopeptidase
    - Cut: P, No Cut: terminal, Sense: C-term  staph_protease - Cut: E, No Cut: terminal,
    Sense: C-term  tca - Cut: KR, No Cut: P, Sense: C-term  - Cut: YWFM, No Cut: P,
    Sense: C-term  - Cut: D, No Cut: none, Sense: N-term  trypsin/cnbr - Cut: KR,
    No Cut: P, Sense: C-term  trypsin_gluc - Cut: DEKR, No Cut: P, Sense: C-term  trypsin_k
    - Cut: K, No Cut: P, Sense: C-term  trypsin_r - Cut: R, No Cut: P, Sense: C-term '
  type: boolean
  inputBinding:
    prefix: -E
- id: path_to_directory_with_out_files
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- Out2XML
