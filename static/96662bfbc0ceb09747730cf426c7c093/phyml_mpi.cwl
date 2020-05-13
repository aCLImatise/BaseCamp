class: CommandLineTool
id: phyml_mpi.cwl
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
- id: n
  doc: "(or --multiple) \e[00;04mnb_data_sets\e[00;00m \e[00;04mnb_data_sets\e[00;00m\
    \ is an integer corresponding to the number of data sets to analyse."
  type: boolean
  inputBinding:
    prefix: -n
- id: p
  doc: "(or --pars)\e[00;00m"
  type: boolean
  inputBinding:
    prefix: -p
- id: b
  doc: "(or --bootstrap) \e[00;04mint\e[00;00m \e[00;04mint\e[00;00m >  0: \e[00;04mint\e\
    [00;00m is the number of bootstrap replicates. \e[00;04mint\e[00;00m =  0: neither\
    \ approximate likelihood ratio test nor bootstrap values are computed. \e[00;04mint\e\
    [00;00m = -1: approximate likelihood ratio test returning aLRT statistics. \e\
    [00;04mint\e[00;00m = -2: approximate likelihood ratio test returning Chi2-based\
    \ parametric branch supports. \e[00;04mint\e[00;00m = -4: SH-like branch supports\
    \ alone. \e[00;04mint\e[00;00m = -5: (default) approximate Bayes branch supports."
  type: boolean
  inputBinding:
    prefix: -b
- id: t_be
  doc: "\e[00;00m Computes TBE instead of FBP (standard) bootstrap support Has no\
    \ effect with -b <= 0"
  type: boolean
  inputBinding:
    prefix: --tbe
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
- id: f
  doc: "\e[00;04me\e[00;01m, \e[00;04mm\e[00;01m, or \e[00;04mfA,fC,fG,fT\e[00;00m\
    \ \e[00;04me\e[00;00m : the character frequencies are determined as follows : "
  type: boolean
  inputBinding:
    prefix: -f
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
- id: s
  doc: "(or --search) \e[00;04mmove\e[00;00m Tree topology search operation option.\
    \ Can be either \e[00;04mNNI\e[00;00m (default, fast) or \e[00;04mSPR\e[00;00m\
    \ (a bit slower than NNI) or \e[00;04mBEST\e[00;00m (best of NNI and SPR search)."
  type: boolean
  inputBinding:
    prefix: -s
- id: u
  doc: "(or --inputtree) \e[00;04muser_tree_file\e[00;00m user_tree_file\e[00;00m\
    \ : starting tree filename. The tree must be in Newick format."
  type: boolean
  inputBinding:
    prefix: -u
- id: o
  doc: "\e[00;04mparams\e[00;00m This option focuses on specific parameter optimisation.\
    \ \e[00;04mparams\e[00;00m=tlr : tree topology (t), branch length (l) and rate\
    \ parameters (r) are optimised. \e[00;04mparams\e[00;00m=tl  : tree topology and\
    \ branch length are optimised. \e[00;04mparams\e[00;00m=lr  : branch length and\
    \ rate parameters are optimised. \e[00;04mparams\e[00;00m=l   : branch length\
    \ are optimised. \e[00;04mparams\e[00;00m=r   : rate parameters are optimised.\
    \ \e[00;04mparams\e[00;00m=n   : no parameter is optimised."
  type: boolean
  inputBinding:
    prefix: -o
- id: quiet
  doc: "\e[00;00m \e[00;00mNo interactive question (for running in batch mode) and\
    \ quiet output."
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- phyml-mpi
