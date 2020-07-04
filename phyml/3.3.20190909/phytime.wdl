version 1.0

task Phytime {
  input {
    Boolean? _datatype_mdatatypem
    Boolean? or__sequential
    Boolean? _model_mmodelm
    Boolean? _tstv_tstvratiom
    Boolean? _pinv_range
    Boolean? _nclasses_number
    Boolean? _alpha_mgammam
    Boolean? _inputtree_musertreefilem
    Boolean? quiet
    Boolean? fast_lk
  }
  command <<<
    phytime \
      ~{true="-d" false="" _datatype_mdatatypem} \
      ~{true="-q" false="" or__sequential} \
      ~{true="-m" false="" _model_mmodelm} \
      ~{true="-t" false="" _tstv_tstvratiom} \
      ~{true="-v" false="" _pinv_range} \
      ~{true="-c" false="" _nclasses_number} \
      ~{true="-a" false="" _alpha_mgammam} \
      ~{true="-u" false="" _inputtree_musertreefilem} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--fastlk" false="" fast_lk}
  >>>
  parameter_meta {
    _datatype_mdatatypem: "(or --datatype) [00;04mdata_type[00;00m [00;04mdata_type[00;00m is 'nt' for nucleotide (default), 'aa' for amino-acid sequences, or 'generic', (use NEXUS file format and the 'symbols' parameter here)."
    or__sequential: "(or --sequential)"
    _model_mmodelm: "(or --model) [00;04mmodel[00;00m model[00;00m : substitution model name. [00;00m- [00;04mNucleotide[00;00m-based models : [00;04mHKY85[00;00m (default) | [00;04mJC69[00;00m | [00;04mK80[00;00m | [00;04mF81[00;00m | [00;04mF84[00;00m | [00;04mTN93[00;00m | [00;04mGTR[00;00m | [00;04mcustom (*)[00;00m (*) : for the custom option, a string of six digits identifies the model. For instance, 000000 corresponds to F81 (or JC69 provided the distribution of nucleotide frequencies is uniform). 012345 corresponds to GTR. This option can be used for encoding any model that is a nested within GTR. [00;00m- [00;04mAmino-acid[00;00m based models : [00;04mLG[00;00m (default) | [00;04mWAG[00;00m | [00;04mJTT[00;00m | [00;04mMtREV[00;00m | [00;04mDayhoff[00;00m | [00;04mDCMut[00;00m | [00;04mRtREV[00;00m | [00;04mCpREV[00;00m | [00;04mVT[00;00m | [00;04mAB[00;00m [00;04mBlosum62[00;00m | [00;04mMtMam[00;00m | [00;04mMtArt[00;00m | [00;04mHIVw[00;00m |  [00;04mHIVb[00;00m | [00;04mcustom[00;00m"
    _tstv_tstvratiom: "(or --ts/tv) [00;04mts/tv_ratio[00;00m ts/tv_ratio[00;00m : transition/transversion ratio. DNA sequences only. Can be a fixed positive value (ex:4.0) or [00;04me[00;00m to get the maximum likelihood estimate."
    _pinv_range: "(or --pinv) [00;04mprop_invar[00;00m prop_invar[00;00m : proportion of invariable sites. Can be a fixed value in the [0,1] range or [00;04me[00;00m to get the maximum likelihood estimate."
    _nclasses_number: "(or --nclasses) [00;04mnb_subst_cat[00;00m nb_subst_cat[00;00m : number of relative substitution rate categories. Default : [00;04mnb_subst_cat[00;00m=4. Must be a positive integer."
    _alpha_mgammam: "(or --alpha) [00;04mgamma[00;00m gamma[00;00m : distribution of the gamma distribution shape parameter. Can be a fixed positive value or [00;04me[00;00m to get the maximum likelihood estimate."
    _inputtree_musertreefilem: "(or --inputtree) [00;04muser_tree_file[00;00m user_tree_file[00;00m : starting tree filename. The tree must be in Newick format."
    quiet: "[00;00m [00;00mNo interactive question (for running in batch mode) and quiet output."
    fast_lk: "[00;00m Use the multivariate normal approximation to the likelihood and speed up calculations"
  }
}