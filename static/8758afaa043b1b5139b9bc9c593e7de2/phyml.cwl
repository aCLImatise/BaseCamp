class: CommandLineTool
id: phyml.cwl
inputs:
- id: in__datatype_mdatatypemmdatatypem
  doc: "(or --datatype) \e[00;04mdata_type\e[00;00m\n\e[00;04mdata_type\e[00;00m is\
    \ 'nt' for nucleotide (default), 'aa' for amino-acid sequences, or 'generic',\n\
    (use NEXUS file format and the 'symbols' parameter here)."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_or__sequential
  doc: (or --sequential)
  type: boolean
  inputBinding:
    prefix: -q
- id: in__multiple_mnbdatasetsmmnbdatasetsm
  doc: "(or --multiple) \e[00;04mnb_data_sets\e[00;00m\n\e[00;04mnb_data_sets\e[00;00m\
    \ is an integer corresponding to the number of data sets to analyse."
  type: boolean
  inputBinding:
    prefix: -n
- id: in_or__parsm
  doc: "(or --pars)\e[00;00m"
  type: boolean
  inputBinding:
    prefix: -p
- id: in__bootstrap_mintmmintm
  doc: "(or --bootstrap) \e[00;04mint\e[00;00m\n\e[00;04mint\e[00;00m >  0: \e[00;04mint\e\
    [00;00m is the number of bootstrap replicates.\n\e[00;04mint\e[00;00m =  0: neither\
    \ approximate likelihood ratio test nor bootstrap values are computed.\n\e[00;04mint\e\
    [00;00m = -1: approximate likelihood ratio test returning aLRT statistics.\n\e\
    [00;04mint\e[00;00m = -2: approximate likelihood ratio test returning Chi2-based\
    \ parametric branch supports.\n\e[00;04mint\e[00;00m = -4: SH-like branch supports\
    \ alone.\n\e[00;04mint\e[00;00m = -5: (default) approximate Bayes branch supports."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_t_be
  doc: "\e[00;00m\nComputes TBE instead of FBP (standard) bootstrap support\nHas no\
    \ effect with -b <= 0"
  type: boolean
  inputBinding:
    prefix: --tbe
- id: in__model_mmodelmmodelm
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
  type: boolean
  inputBinding:
    prefix: -m
- id: in_aa_rate_file
  doc: "\e[00;04mfilename\e[00;00m\n\e[00;04mfilename\e[00;00m is the name of the\
    \ file that provides the amino acid substitution rate matrix in PAML format.\n\
    It is compulsory to use this option when analysing amino acid sequences with the\
    \ `custom' model."
  type: boolean
  inputBinding:
    prefix: --aa_rate_file
- id: in_mem_mmm_mfafcfgftmmem
  doc: "\e[00;04me\e[00;01m, \e[00;04mm\e[00;01m, or \e[00;04mfA,fC,fG,fT\e[00;00m\n\
    \e[00;04me\e[00;00m : the character frequencies are determined as follows :"
  type: boolean
  inputBinding:
    prefix: -f
- id: in__tstv_mtstvratiomtstvratiom
  doc: "(or --ts/tv) \e[00;04mts/tv_ratio\e[00;00m\nts/tv_ratio\e[00;00m : transition/transversion\
    \ ratio. DNA sequences only.\nCan be a fixed positive value (ex:4.0) or \e[00;04me\e\
    [00;00m to get the maximum likelihood estimate."
  type: boolean
  inputBinding:
    prefix: -t
- id: in__pinv_mpropinvarmpropinvarm
  doc: "(or --pinv) \e[00;04mprop_invar\e[00;00m\nprop_invar\e[00;00m : proportion\
    \ of invariable sites.\nCan be a fixed value in the [0,1] range or \e[00;04me\e\
    [00;00m to get the maximum likelihood estimate."
  type: boolean
  inputBinding:
    prefix: -v
- id: in__nclasses_mnbsubstcatmnbsubstcatm
  doc: "(or --nclasses) \e[00;04mnb_subst_cat\e[00;00m\nnb_subst_cat\e[00;00m : number\
    \ of relative substitution rate categories. Default : \e[00;04mnb_subst_cat\e\
    [00;00m=4.\nMust be a positive integer."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_free_rates
  doc: "(or --free_rates or --freerate or --free_rate)\n\e[00;00m FreeRate model of\
    \ substitution rate variation across sites."
  type: boolean
  inputBinding:
    prefix: --freerates
- id: in__alpha_mgammamgammam
  doc: "(or --alpha) \e[00;04mgamma\e[00;00m\ngamma\e[00;00m : distribution of the\
    \ gamma distribution shape parameter.\nCan be a fixed positive value or \e[00;04me\e\
    [00;00m to get the maximum likelihood estimate."
  type: boolean
  inputBinding:
    prefix: -a
- id: in__search_mmovemtree
  doc: "(or --search) \e[00;04mmove\e[00;00m\nTree topology search operation option.\n\
    Can be either \e[00;04mNNI\e[00;00m (default, fast) or \e[00;04mSPR\e[00;00m (a\
    \ bit slower than NNI) or \e[00;04mBEST\e[00;00m (best of NNI and SPR search)."
  type: boolean
  inputBinding:
    prefix: -s
- id: in__inputtree_musertreefilemusertreefilem
  doc: "(or --inputtree) \e[00;04muser_tree_file\e[00;00m\nuser_tree_file\e[00;00m\
    \ : starting tree filename. The tree must be in Newick format."
  type: boolean
  inputBinding:
    prefix: -u
- id: in_option_focuses_specific
  doc: "\e[00;04mparams\e[00;00m\nThis option focuses on specific parameter optimisation.\n\
    \e[00;04mparams\e[00;00m=tlr : tree topology (t), branch length (l) and rate parameters\
    \ (r) are optimised.\n\e[00;04mparams\e[00;00m=tl  : tree topology and branch\
    \ length are optimised.\n\e[00;04mparams\e[00;00m=lr  : branch length and rate\
    \ parameters are optimised.\n\e[00;04mparams\e[00;00m=l   : branch length are\
    \ optimised.\n\e[00;04mparams\e[00;00m=r   : rate parameters are optimised.\n\e\
    [00;04mparams\e[00;00m=n   : no parameter is optimised."
  type: boolean
  inputBinding:
    prefix: -o
- id: in_rand_start
  doc: "\e[00;00m\nThis option sets the initial tree to random.\nIt is only valid\
    \ if SPR searches are to be performed."
  type: boolean
  inputBinding:
    prefix: --rand_start
- id: in_n_rand_starts
  doc: "\e[00;04mnum\e[00;00m\nnum\e[00;00m is the number of initial random trees\
    \ to be used.\nIt is only valid if SPR searches are to be performed."
  type: boolean
  inputBinding:
    prefix: --n_rand_starts
- id: in_r_seed
  doc: "\e[00;04mnum\e[00;00m\nnum\e[00;00m is the seed used to initiate the random\
    \ number generator.\nMust be an integer."
  type: boolean
  inputBinding:
    prefix: --r_seed
- id: in_print_site_lnl
  doc: "\e[00;00m\n\e[00;00mPrint the likelihood for each site in file *_phyml_lk.txt."
  type: boolean
  inputBinding:
    prefix: --print_site_lnl
- id: in_print_trace
  doc: "\e[00;00m\n\e[00;00mPrint each phylogeny explored during the tree search process\n\
    \e[00;00min file *_phyml_trace.txt."
  type: boolean
  inputBinding:
    prefix: --print_trace
- id: in_run_id
  doc: "\e[00;04mID_string\e[00;00m\n\e[00;00mAppend the string \e[00;04mID_string\e\
    [00;00m at the end of each PhyML output file.\n\e[00;00mThis option may be useful\
    \ when running simulations involving PhyML."
  type: File
  inputBinding:
    prefix: --run_id
- id: in_quiet
  doc: "\e[00;00m\n\e[00;00mNo interactive question (for running in batch mode) and\
    \ quiet output."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_no_memory_check
  doc: "\e[00;00m\n\e[00;00mNo interactive question for memory usage (for running\
    \ in batch mode). Normal output otherwise."
  type: boolean
  inputBinding:
    prefix: --no_memory_check
- id: in_leave_duplicates
  doc: "\e[00;00m\n\e[00;00mPhyML removes duplicate sequences by default. Use this\
    \ option to leave them in."
  type: boolean
  inputBinding:
    prefix: --leave_duplicates
- id: in_alias_sub_patt
  doc: "\e[00;00m\n\e[00;00mSite aliasing is generalized at the subtree level. Sometimes\
    \ lead to faster calculations.\n\e[00;00mSee Kosakovsky Pond SL, Muse SV, Sytematic\
    \ Biology (2004) for an example."
  type: boolean
  inputBinding:
    prefix: --alias_subpatt
- id: in_boot_progress_display
  doc: "\e[00;04mnum\e[00;00m (default=20)\n\e[00;04mnum\e[00;00m is the frequency\
    \ at which the bootstrap progress bar will be updated.\nMust be an integer."
  type: boolean
  inputBinding:
    prefix: --boot_progress_display
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_run_id
  doc: "\e[00;04mID_string\e[00;00m\n\e[00;00mAppend the string \e[00;04mID_string\e\
    [00;00m at the end of each PhyML output file.\n\e[00;00mThis option may be useful\
    \ when running simulations involving PhyML."
  type: File
  outputBinding:
    glob: $(inputs.in_run_id)
cwlVersion: v1.1
baseCommand:
- phyml
