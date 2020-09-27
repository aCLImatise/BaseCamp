class: CommandLineTool
id: igphyml.cwl
inputs:
- id: in_run_id
  doc: "\e[00;04mID_string\e[00;00m\n\e[00;00mAppend the string \e[00;04mID_string\e\
    [00;00m at the end of each output file."
  type: File
  inputBinding:
    prefix: --run_id
- id: in_musertreefilem_only_usedmusertreefilem
  doc: "\e[00;04muser_tree_file\e[00;00m (only if -i used)\n\e[00;04muser_tree_file\e\
    [00;00m : starting tree filename. The tree must be in Newick format."
  type: boolean
  inputBinding:
    prefix: -u
- id: in_part_file
  doc: "\e[00;04mpartition_file\e[00;00m (only if -i used)\n\e[00;04mpartition_file\e\
    [00;00m : Partition file specifying CDRs/FWRs for sequence file."
  type: boolean
  inputBinding:
    prefix: --partfile
- id: in_mmodelm_mrequiredmmodelm_substitution
  doc: "\e[00;04mmodel\e[00;00m \e[00;01m(required)\n\e[00;04mmodel\e[00;00m : substitution\
    \ model name.\n\e[00;00mCodon\e[00;00m based models: \e[00;04mHLP\e[00;00m (HLP19)\
    \ | \e[00;04mGY\e[00;00m | \e[00;04mHLP17\e[00;00m\n\e[00;00mUse GY for quick\
    \ tree construction.\nHLP for B cell specific features (see docs)."
  type: boolean
  inputBinding:
    prefix: -m
- id: in_set_transitiontransversion_ratio
  doc: "\e[00;04mts/tv_ratio\e[00;00m = [e|ce|i|ci|>0]\nSet the transition/transversion\
    \ ratio."
  type: boolean
  inputBinding:
    prefix: -t
- id: in_omega
  doc: "\e[00;04momega\e[00;00m = [e|ce|i|ci|>0]\nSet number/value of omegas to estimate.\n\
    First value (0) corresponds to FWRs, second (1) to CDRs.\nMay specify multiple\
    \ omegas if partition file(s) specified."
  type: boolean
  inputBinding:
    prefix: --omega
- id: in_hotness
  doc: "\e[00;04mhotness\e[00;00m = [e|ce|i|ci|>-1]\nSet number hot- and coldspot\
    \ rates to estimate.\nMay specify multiple values according to --motifs option.\n\
    'e,e,e,e,e,e' is default."
  type: boolean
  inputBinding:
    prefix: --hotness
- id: in_motifs
  doc: "\e[00;04mmotifs\e[00;00m\nSpecify hot- and coldspot motifs to be modeled.\n\
    \e[00;04mmotifs\e[00;00m = FCH (default) : Free coldspots and hotspots. Estimate\
    \ separate rates for six canonical motifs.\nOtherwise, motifs specified by <motif>_<mutable\
    \ position>:<index_in_hotness>.\n\e[00;04mmotifs\e[00;00m = WRC_2:0 | GYW_0:0\
    \ | WA_1:0 | TW_0:0 | SYC_2:0 | GRS_0:0 : Model rate specific motif(s).\ne.g.\
    \ \e[00;04mmotifs\e[00;00m = WRC_2:0,GYW_0:0 symmetric WR\e[00;04mC\e[00;00m/\e\
    [00;04mG\e[00;00mYW motifs.\ne.g. \e[00;04mmotifs\e[00;00m = WRC_2:0,GYW_0:1 asymmetric\
    \ WR\e[00;04mC\e[00;00m/\e[00;04mG\e[00;00mYW motifs. Must specify two values\
    \ in --hotness."
  type: boolean
  inputBinding:
    prefix: --motifs
- id: in__frequencies_mempiricalm
  doc: "(or --frequencies) \e[00;04mempirical\e[00;01m, \e[00;04mmodel\e[00;00m, \e\
    [00;04moptimized\e[00;00m, \e[00;04mfT,fC,fA,fG\e[00;00m,\n\e[00;04mfT1,fC1,fA1,fG1,fT2,fC2,fA2,fG2,fT3,fC3,fA3,fG3\e\
    [00;00m\n\e[00;01mor\e[00;00m \e[00;04mfC1,fC2, ... ,fC64\e[00;00m\n\e[00;04mempirical\e\
    [00;00m: (GY default) the equilibrium codon frequencies are estimated by counting\n\
    the occurence of bases or codons in the alignment.\n\e[00;04moptimize\e[00;00m\
    \ : (HLP17 default) codon frequencies are estimated using maximum likelihood"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_f_model
  doc: "\e[00;04mfrequency model\e[00;00m\nWhich frequency model to use.\n\e[00;04mfrequency\
    \ model\e[00;00m = \e[00;04mF1XCODONS\e[00;00m | \e[00;04mF1X4\e[00;00m | \e[00;04mF3X4\e\
    [00;00m | \e[00;04mCF3X4\e[00;00m (default)"
  type: boolean
  inputBinding:
    prefix: --fmodel
- id: in__optimize_focuses
  doc: "(or --optimize) \e[00;04mparams\e[00;00m\nThis option focuses on specific\
    \ parameter optimisation.\n\e[00;04mparams\e[00;00m = tlr : (default) tree topology\
    \ (t), branch length (l) and rate parameters (r) are optimised.\n\e[00;04mparams\e\
    [00;00m = tl  : tree topology and branch length are optimised.\n\e[00;04mparams\e\
    [00;00m = lr  : branch length and rate parameters are optimised.\n\e[00;04mparams\e\
    [00;00m = l   : branch length are optimised.\n\e[00;04mparams\e[00;00m = r   :\
    \ rate parameters are optimised.\n\e[00;04mparams\e[00;00m = n   : no parameter\
    \ is optimised."
  type: boolean
  inputBinding:
    prefix: -o
- id: in__search_mmovemtree
  doc: "(or --search) \e[00;04mmove\e[00;00m\nTree topology search operation option.\n\
    Can be either \e[00;04mNNI\e[00;00m (default, fast) or \e[00;04mSPR\e[00;00m (thorough,\
    \ slow)."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_threads
  doc: "\e[00;04mnum_threads\e[00;00m\nNumber of threads to use for parallelization.\
    \ Default is 1."
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_min_seq
  doc: "\e[00;04mminimum_sequences\e[00;00m\nMinimum number of sequences (including\
    \ germline) per lineage for inclusion in analysis."
  type: boolean
  inputBinding:
    prefix: --minSeq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_run_id
  doc: "\e[00;04mID_string\e[00;00m\n\e[00;00mAppend the string \e[00;04mID_string\e\
    [00;00m at the end of each output file."
  type: File
  outputBinding:
    glob: $(inputs.in_run_id)
cwlVersion: v1.1
baseCommand:
- igphyml
