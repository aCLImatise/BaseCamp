class: CommandLineTool
id: phytime.cwl
inputs:
- id: d
  doc: "(or --datatype) \e[00;04mdata_type\e[00;00m \e[00;04mdata_type\e[00;00m is\
    \ 'nt' for nucleotide (default), 'aa' for amino-acid sequences, or 'generic',\
    \ (use NEXUS file format and the 'symbols' parameter here)."
  type: boolean
  inputBinding:
    prefix: -d
- id: q
  doc: (or --sequential)
  type: boolean
  inputBinding:
    prefix: -q
- id: m
  doc: "(or --model) \e[00;04mmodel\e[00;00m model\e[00;00m : substitution model name.\
    \ \e[00;00m- \e[00;04mNucleotide\e[00;00m-based models : \e[00;04mHKY85\e[00;00m\
    \ (default) | \e[00;04mJC69\e[00;00m | \e[00;04mK80\e[00;00m | \e[00;04mF81\e\
    [00;00m | \e[00;04mF84\e[00;00m | \e[00;04mTN93\e[00;00m | \e[00;04mGTR\e[00;00m\
    \ | \e[00;04mcustom (*)\e[00;00m (*) : for the custom option, a string of six\
    \ digits identifies the model. For instance, 000000 corresponds to F81 (or JC69\
    \ provided the distribution of nucleotide frequencies is uniform). 012345 corresponds\
    \ to GTR. This option can be used for encoding any model that is a nested within\
    \ GTR. \e[00;00m- \e[00;04mAmino-acid\e[00;00m based models : \e[00;04mLG\e[00;00m\
    \ (default) | \e[00;04mWAG\e[00;00m | \e[00;04mJTT\e[00;00m | \e[00;04mMtREV\e\
    [00;00m | \e[00;04mDayhoff\e[00;00m | \e[00;04mDCMut\e[00;00m | \e[00;04mRtREV\e\
    [00;00m | \e[00;04mCpREV\e[00;00m | \e[00;04mVT\e[00;00m | \e[00;04mAB\e[00;00m\
    \ \e[00;04mBlosum62\e[00;00m | \e[00;04mMtMam\e[00;00m | \e[00;04mMtArt\e[00;00m\
    \ | \e[00;04mHIVw\e[00;00m |  \e[00;04mHIVb\e[00;00m | \e[00;04mcustom\e[00;00m"
  type: boolean
  inputBinding:
    prefix: -m
- id: t
  doc: "(or --ts/tv) \e[00;04mts/tv_ratio\e[00;00m ts/tv_ratio\e[00;00m : transition/transversion\
    \ ratio. DNA sequences only. Can be a fixed positive value (ex:4.0) or \e[00;04me\e\
    [00;00m to get the maximum likelihood estimate."
  type: boolean
  inputBinding:
    prefix: -t
- id: v
  doc: "(or --pinv) \e[00;04mprop_invar\e[00;00m prop_invar\e[00;00m : proportion\
    \ of invariable sites. Can be a fixed value in the [0,1] range or \e[00;04me\e\
    [00;00m to get the maximum likelihood estimate."
  type: boolean
  inputBinding:
    prefix: -v
- id: c
  doc: "(or --nclasses) \e[00;04mnb_subst_cat\e[00;00m nb_subst_cat\e[00;00m : number\
    \ of relative substitution rate categories. Default : \e[00;04mnb_subst_cat\e\
    [00;00m=4. Must be a positive integer."
  type: boolean
  inputBinding:
    prefix: -c
- id: a
  doc: "(or --alpha) \e[00;04mgamma\e[00;00m gamma\e[00;00m : distribution of the\
    \ gamma distribution shape parameter. Can be a fixed positive value or \e[00;04me\e\
    [00;00m to get the maximum likelihood estimate."
  type: boolean
  inputBinding:
    prefix: -a
- id: u
  doc: "(or --inputtree) \e[00;04muser_tree_file\e[00;00m user_tree_file\e[00;00m\
    \ : starting tree filename. The tree must be in Newick format."
  type: boolean
  inputBinding:
    prefix: -u
- id: quiet
  doc: "\e[00;00m \e[00;00mNo interactive question (for running in batch mode) and\
    \ quiet output."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: fast_lk
  doc: "\e[00;00m Use the multivariate normal approximation to the likelihood and\
    \ speed up calculations"
  type: boolean
  inputBinding:
    prefix: --fastlk
outputs: []
cwlVersion: v1.1
baseCommand:
- phytime
