version 1.0

task PhymlMpi {
  input {
    Boolean? _datatype_mdatatypem
    Boolean? or__sequential
    Boolean? _multiple_mnbdatasetsm
    Boolean? or__parsm
    Boolean? _bootstrap_mintm
    Boolean? t_be
    Boolean? _model_mmodelm
    Boolean? mem_mmm_mem
    Boolean? _tstv_tstvratiom
    Boolean? _pinv_range
    Boolean? _nclasses_number
    Boolean? _alpha_mgammam
    Boolean? _search_mmovem
    Boolean? _inputtree_musertreefilem
    Boolean? mparamsm_option_focuses
    Boolean? quiet
  }
  command <<<
    phyml-mpi \
      ~{true="-d" false="" _datatype_mdatatypem} \
      ~{true="-q" false="" or__sequential} \
      ~{true="-n" false="" _multiple_mnbdatasetsm} \
      ~{true="-p" false="" or__parsm} \
      ~{true="-b" false="" _bootstrap_mintm} \
      ~{true="--tbe" false="" t_be} \
      ~{true="-m" false="" _model_mmodelm} \
      ~{true="-f" false="" mem_mmm_mem} \
      ~{true="-t" false="" _tstv_tstvratiom} \
      ~{true="-v" false="" _pinv_range} \
      ~{true="-c" false="" _nclasses_number} \
      ~{true="-a" false="" _alpha_mgammam} \
      ~{true="-s" false="" _search_mmovem} \
      ~{true="-u" false="" _inputtree_musertreefilem} \
      ~{true="-o" false="" mparamsm_option_focuses} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    _datatype_mdatatypem: "(or --datatype) [00;04mdata_type[00;00m [00;04mdata_type[00;00m is 'nt' for nucleotide (default), 'aa' for amino-acid sequences, or 'generic', (use NEXUS file format and the 'symbols' parameter here)."
    or__sequential: "(or --sequential)"
    _multiple_mnbdatasetsm: "(or --multiple) [00;04mnb_data_sets[00;00m [00;04mnb_data_sets[00;00m is an integer corresponding to the number of data sets to analyse."
    or__parsm: "(or --pars)[00;00m"
    _bootstrap_mintm: "(or --bootstrap) [00;04mint[00;00m [00;04mint[00;00m >  0: [00;04mint[00;00m is the number of bootstrap replicates. [00;04mint[00;00m =  0: neither approximate likelihood ratio test nor bootstrap values are computed. [00;04mint[00;00m = -1: approximate likelihood ratio test returning aLRT statistics. [00;04mint[00;00m = -2: approximate likelihood ratio test returning Chi2-based parametric branch supports. [00;04mint[00;00m = -4: SH-like branch supports alone. [00;04mint[00;00m = -5: (default) approximate Bayes branch supports."
    t_be: "[00;00m Computes TBE instead of FBP (standard) bootstrap support Has no effect with -b <= 0"
    _model_mmodelm: "(or --model) [00;04mmodel[00;00m model[00;00m : substitution model name. [00;00m- [00;04mNucleotide[00;00m-based models : [00;04mHKY85[00;00m (default) | [00;04mJC69[00;00m | [00;04mK80[00;00m | [00;04mF81[00;00m | [00;04mF84[00;00m | [00;04mTN93[00;00m | [00;04mGTR[00;00m | [00;04mcustom (*)[00;00m (*) : for the custom option, a string of six digits identifies the model. For instance, 000000 corresponds to F81 (or JC69 provided the distribution of nucleotide frequencies is uniform). 012345 corresponds to GTR. This option can be used for encoding any model that is a nested within GTR. [00;00m- [00;04mAmino-acid[00;00m based models : [00;04mLG[00;00m (default) | [00;04mWAG[00;00m | [00;04mJTT[00;00m | [00;04mMtREV[00;00m | [00;04mDayhoff[00;00m | [00;04mDCMut[00;00m | [00;04mRtREV[00;00m | [00;04mCpREV[00;00m | [00;04mVT[00;00m | [00;04mAB[00;00m [00;04mBlosum62[00;00m | [00;04mMtMam[00;00m | [00;04mMtArt[00;00m | [00;04mHIVw[00;00m |  [00;04mHIVb[00;00m | [00;04mcustom[00;00m"
    mem_mmm_mem: "[00;04me[00;01m, [00;04mm[00;01m, or [00;04mfA,fC,fG,fT[00;00m [00;04me[00;00m : the character frequencies are determined as follows : "
    _tstv_tstvratiom: "(or --ts/tv) [00;04mts/tv_ratio[00;00m ts/tv_ratio[00;00m : transition/transversion ratio. DNA sequences only. Can be a fixed positive value (ex:4.0) or [00;04me[00;00m to get the maximum likelihood estimate."
    _pinv_range: "(or --pinv) [00;04mprop_invar[00;00m prop_invar[00;00m : proportion of invariable sites. Can be a fixed value in the [0,1] range or [00;04me[00;00m to get the maximum likelihood estimate."
    _nclasses_number: "(or --nclasses) [00;04mnb_subst_cat[00;00m nb_subst_cat[00;00m : number of relative substitution rate categories. Default : [00;04mnb_subst_cat[00;00m=4. Must be a positive integer."
    _alpha_mgammam: "(or --alpha) [00;04mgamma[00;00m gamma[00;00m : distribution of the gamma distribution shape parameter. Can be a fixed positive value or [00;04me[00;00m to get the maximum likelihood estimate."
    _search_mmovem: "(or --search) [00;04mmove[00;00m Tree topology search operation option. Can be either [00;04mNNI[00;00m (default, fast) or [00;04mSPR[00;00m (a bit slower than NNI) or [00;04mBEST[00;00m (best of NNI and SPR search)."
    _inputtree_musertreefilem: "(or --inputtree) [00;04muser_tree_file[00;00m user_tree_file[00;00m : starting tree filename. The tree must be in Newick format."
    mparamsm_option_focuses: "[00;04mparams[00;00m This option focuses on specific parameter optimisation. [00;04mparams[00;00m=tlr : tree topology (t), branch length (l) and rate parameters (r) are optimised. [00;04mparams[00;00m=tl  : tree topology and branch length are optimised. [00;04mparams[00;00m=lr  : branch length and rate parameters are optimised. [00;04mparams[00;00m=l   : branch length are optimised. [00;04mparams[00;00m=r   : rate parameters are optimised. [00;04mparams[00;00m=n   : no parameter is optimised."
    quiet: "[00;00m [00;00mNo interactive question (for running in batch mode) and quiet output."
  }
}