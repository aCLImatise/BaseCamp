class: CommandLineTool
id: phytime.cwl
inputs:
- id: in__datatype_mdatatypemmdatatypem
  doc: "(or --datatype) \e[00;04mdata_type\e[00;00m\n\e[00;04mdata_type\e[00;00m is\
    \ 'nt' for nucleotide (default), 'aa' for amino-acid sequences, or 'generic',\n\
    (use NEXUS file format and the 'symbols' parameter here)."
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_or__sequential
  doc: (or --sequential)
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_model_mmodelmmodelm_substitution
  doc: "(or --model) \e[00;04mmodel\e[00;00m\nmodel\e[00;00m : substitution model\
    \ name.\n\e[00;00m- \e[00;04mNucleotide\e[00;00m-based models : \e[00;04mHKY85\e\
    [00;00m (default) | \e[00;04mJC69\e[00;00m | \e[00;04mK80\e[00;00m | \e[00;04mF81\e\
    [00;00m | \e[00;04mF84\e[00;00m\n\e[00;04mTN93\e[00;00m | \e[00;04mGTR\e[00;00m\
    \ | \e[00;04mcustom (*)\e[00;00m\n(*) : for the custom option, a string of six\
    \ digits identifies the model. For instance, 000000\ncorresponds to F81 (or JC69\
    \ provided the distribution of nucleotide frequencies is uniform).\n012345 corresponds\
    \ to GTR. This option can be used for encoding any model that is a nested within\
    \ GTR.\n\e[00;00m- \e[00;04mAmino-acid\e[00;00m based models : \e[00;04mLG\e[00;00m\
    \ (default) | \e[00;04mWAG\e[00;00m | \e[00;04mJTT\e[00;00m | \e[00;04mMtREV\e\
    [00;00m | \e[00;04mDayhoff\e[00;00m | \e[00;04mDCMut\e[00;00m\n\e[00;04mRtREV\e\
    [00;00m | \e[00;04mCpREV\e[00;00m | \e[00;04mVT\e[00;00m | \e[00;04mAB\e[00;00m\
    \ | \e[00;04mBlosum62\e[00;00m | \e[00;04mMtMam\e[00;00m | \e[00;04mMtArt\e[00;00m\n\
    \e[00;04mHIVw\e[00;00m |  \e[00;04mHIVb\e[00;00m | \e[00;04mcustom\e[00;00m"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_aa_rate_file
  doc: "\e[00;04mfilename\e[00;00m\n\e[00;04mfilename\e[00;00m is the name of the\
    \ file that provides the amino acid substitution rate matrix in PAML format.\n\
    It is compulsory to use this option when analysing amino acid sequences with the\
    \ `custom' model."
  type: boolean?
  inputBinding:
    prefix: --aa_rate_file
- id: in_calibration
  doc: "\e[00;04mfilename\e[00;00m\n\e[00;04mfilename\e[00;00m is the name of the\
    \ calibration file that provides a priori defined boundaries for node ages.\n\
    Please read the manual for more information about the format of this file."
  type: boolean?
  inputBinding:
    prefix: --calibration
- id: in_tstv_mtstvratiomtstvratiom_transitiontransversion
  doc: "(or --ts/tv) \e[00;04mts/tv_ratio\e[00;00m\nts/tv_ratio\e[00;00m : transition/transversion\
    \ ratio. DNA sequences only.\nCan be a fixed positive value (ex:4.0) or \e[00;04me\e\
    [00;00m to get the maximum likelihood estimate."
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_pinv_proportion_be
  doc: "(or --pinv) \e[00;04mprop_invar\e[00;00m\nprop_invar\e[00;00m : proportion\
    \ of invariable sites.\nCan be a fixed value in the [0,1] range or \e[00;04me\e\
    [00;00m to get the maximum likelihood estimate."
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_nclasses_mnbsubstcatmnbsubstcatm_number
  doc: "(or --nclasses) \e[00;04mnb_subst_cat\e[00;00m\nnb_subst_cat\e[00;00m : number\
    \ of relative substitution rate categories. Default : \e[00;04mnb_subst_cat\e\
    [00;00m=4.\nMust be a positive integer."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_free_rates
  doc: "(or --free_rates or --freerate or --free_rate)\n\e[00;00m FreeRate model of\
    \ substitution rate variation across sites."
  type: boolean?
  inputBinding:
    prefix: --freerates
- id: in_alpha_mgammamgammam_distribution
  doc: "(or --alpha) \e[00;04mgamma\e[00;00m\ngamma\e[00;00m : distribution of the\
    \ gamma distribution shape parameter.\nCan be a fixed positive value or \e[00;04me\e\
    [00;00m to get the maximum likelihood estimate."
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_inputtree_musertreefilemusertreefilem_starting
  doc: "(or --inputtree) \e[00;04muser_tree_file\e[00;00m\nuser_tree_file\e[00;00m\
    \ : starting tree filename. The tree must be in Newick format."
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_r_seed
  doc: "\e[00;04mnum\e[00;00m\nnum\e[00;00m is the seed used to initiate the random\
    \ number generator.\nMust be an integer."
  type: boolean?
  inputBinding:
    prefix: --r_seed
- id: in_run_id
  doc: "\e[00;04mID_string\e[00;00m\n\e[00;00mAppend the string \e[00;04mID_string\e\
    [00;00m at the end of each PhyML output file.\n\e[00;00mThis option may be useful\
    \ when running simulations involving PhyML."
  type: File?
  inputBinding:
    prefix: --run_id
- id: in_quiet
  doc: "\e[00;00m\n\e[00;00mNo interactive question (for running in batch mode) and\
    \ quiet output."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_no_memory_check
  doc: "\e[00;00m\n\e[00;00mNo interactive question for memory usage (for running\
    \ in batch mode). Normal output otherwise."
  type: boolean?
  inputBinding:
    prefix: --no_memory_check
- id: in_chain_len
  doc: "\e[00;04mnum\e[00;00m\n\e[00;04mnum\e[00;00m is the number of generations\
    \ or runs of the Markov Chain Monte Carlo. Set to 1E+6 by default.\nMust be an\
    \ integer."
  type: boolean?
  inputBinding:
    prefix: --chain_len
- id: in_sample_freq
  doc: "\e[00;04mnum\e[00;00m\nThe chain is sampled every \e[00;04mnum\e[00;00m generations.\
    \ Set to 1E+3 by default.\nMust be an integer."
  type: boolean?
  inputBinding:
    prefix: --sample_freq
- id: in_no_sequences
  doc: "\e[00;00m\nUse this option to run the sampler without sequence data."
  type: boolean?
  inputBinding:
    prefix: --no_sequences
- id: in_fast_lk
  doc: "\e[00;00m\nUse the multivariate normal approximation to the likelihood and\
    \ speed up calculations\n"
  type: boolean?
  inputBinding:
    prefix: --fastlk
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_run_id
  doc: "\e[00;04mID_string\e[00;00m\n\e[00;00mAppend the string \e[00;04mID_string\e\
    [00;00m at the end of each PhyML output file.\n\e[00;00mThis option may be useful\
    \ when running simulations involving PhyML."
  type: File?
  outputBinding:
    glob: $(inputs.in_run_id)
hints: []
cwlVersion: v1.1
baseCommand:
- phytime
