version 1.0

task Phytime {
  input {
    Boolean? _datatype_mdatatypemmdatatypem
    Boolean? or__sequential
    Boolean? _model_mmodelmmodelm
    Boolean? aa_rate_file
    Boolean? calibration
    Boolean? _tstv_mtstvratiomtstvratiom
    Boolean? _pinv_mpropinvarmpropinvarm
    Boolean? _nclasses_mnbsubstcatmnbsubstcatm
    Boolean? free_rates
    Boolean? _alpha_mgammamgammam
    Boolean? _inputtree_musertreefilemusertreefilem
    Boolean? r_seed
    File? run_id
    Boolean? quiet
    Boolean? no_memory_check
    Boolean? chain_len
    Boolean? sample_freq
    Boolean? no_sequences
    Boolean? fast_lk
  }
  command <<<
    phytime \
      ~{if (_datatype_mdatatypemmdatatypem) then "-d" else ""} \
      ~{if (or__sequential) then "-q" else ""} \
      ~{if (_model_mmodelmmodelm) then "-m" else ""} \
      ~{if (aa_rate_file) then "--aa_rate_file" else ""} \
      ~{if (calibration) then "--calibration" else ""} \
      ~{if (_tstv_mtstvratiomtstvratiom) then "-t" else ""} \
      ~{if (_pinv_mpropinvarmpropinvarm) then "-v" else ""} \
      ~{if (_nclasses_mnbsubstcatmnbsubstcatm) then "-c" else ""} \
      ~{if (free_rates) then "--freerates" else ""} \
      ~{if (_alpha_mgammamgammam) then "-a" else ""} \
      ~{if (_inputtree_musertreefilemusertreefilem) then "-u" else ""} \
      ~{if (r_seed) then "--r_seed" else ""} \
      ~{if (run_id) then "--run_id" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (no_memory_check) then "--no_memory_check" else ""} \
      ~{if (chain_len) then "--chain_len" else ""} \
      ~{if (sample_freq) then "--sample_freq" else ""} \
      ~{if (no_sequences) then "--no_sequences" else ""} \
      ~{if (fast_lk) then "--fastlk" else ""}
  >>>
  parameter_meta {
    _datatype_mdatatypemmdatatypem: "(or --datatype) [00;04mdata_type[00;00m\\n[00;04mdata_type[00;00m is 'nt' for nucleotide (default), 'aa' for amino-acid sequences, or 'generic',\\n(use NEXUS file format and the 'symbols' parameter here)."
    or__sequential: "(or --sequential)"
    _model_mmodelmmodelm: "(or --model) [00;04mmodel[00;00m\\nmodel[00;00m : substitution model name.\\n[00;00m- [00;04mNucleotide[00;00m-based models : [00;04mHKY85[00;00m (default) | [00;04mJC69[00;00m | [00;04mK80[00;00m | [00;04mF81[00;00m | [00;04mF84[00;00m\\n[00;04mTN93[00;00m | [00;04mGTR[00;00m | [00;04mcustom (*)[00;00m\\n(*) : for the custom option, a string of six digits identifies the model. For instance, 000000\\ncorresponds to F81 (or JC69 provided the distribution of nucleotide frequencies is uniform).\\n012345 corresponds to GTR. This option can be used for encoding any model that is a nested within GTR.\\n[00;00m- [00;04mAmino-acid[00;00m based models : [00;04mLG[00;00m (default) | [00;04mWAG[00;00m | [00;04mJTT[00;00m | [00;04mMtREV[00;00m | [00;04mDayhoff[00;00m | [00;04mDCMut[00;00m\\n[00;04mRtREV[00;00m | [00;04mCpREV[00;00m | [00;04mVT[00;00m | [00;04mAB[00;00m | [00;04mBlosum62[00;00m | [00;04mMtMam[00;00m | [00;04mMtArt[00;00m\\n[00;04mHIVw[00;00m |  [00;04mHIVb[00;00m | [00;04mcustom[00;00m"
    aa_rate_file: "[00;04mfilename[00;00m\\n[00;04mfilename[00;00m is the name of the file that provides the amino acid substitution rate matrix in PAML format.\\nIt is compulsory to use this option when analysing amino acid sequences with the `custom' model."
    calibration: "[00;04mfilename[00;00m\\n[00;04mfilename[00;00m is the name of the calibration file that provides a priori defined boundaries for node ages.\\nPlease read the manual for more information about the format of this file."
    _tstv_mtstvratiomtstvratiom: "(or --ts/tv) [00;04mts/tv_ratio[00;00m\\nts/tv_ratio[00;00m : transition/transversion ratio. DNA sequences only.\\nCan be a fixed positive value (ex:4.0) or [00;04me[00;00m to get the maximum likelihood estimate."
    _pinv_mpropinvarmpropinvarm: "(or --pinv) [00;04mprop_invar[00;00m\\nprop_invar[00;00m : proportion of invariable sites.\\nCan be a fixed value in the [0,1] range or [00;04me[00;00m to get the maximum likelihood estimate."
    _nclasses_mnbsubstcatmnbsubstcatm: "(or --nclasses) [00;04mnb_subst_cat[00;00m\\nnb_subst_cat[00;00m : number of relative substitution rate categories. Default : [00;04mnb_subst_cat[00;00m=4.\\nMust be a positive integer."
    free_rates: "(or --free_rates or --freerate or --free_rate)\\n[00;00m FreeRate model of substitution rate variation across sites."
    _alpha_mgammamgammam: "(or --alpha) [00;04mgamma[00;00m\\ngamma[00;00m : distribution of the gamma distribution shape parameter.\\nCan be a fixed positive value or [00;04me[00;00m to get the maximum likelihood estimate."
    _inputtree_musertreefilemusertreefilem: "(or --inputtree) [00;04muser_tree_file[00;00m\\nuser_tree_file[00;00m : starting tree filename. The tree must be in Newick format."
    r_seed: "[00;04mnum[00;00m\\nnum[00;00m is the seed used to initiate the random number generator.\\nMust be an integer."
    run_id: "[00;04mID_string[00;00m\\n[00;00mAppend the string [00;04mID_string[00;00m at the end of each PhyML output file.\\n[00;00mThis option may be useful when running simulations involving PhyML."
    quiet: "[00;00m\\n[00;00mNo interactive question (for running in batch mode) and quiet output."
    no_memory_check: "[00;00m\\n[00;00mNo interactive question for memory usage (for running in batch mode). Normal output otherwise."
    chain_len: "[00;04mnum[00;00m\\n[00;04mnum[00;00m is the number of generations or runs of the Markov Chain Monte Carlo. Set to 1E+6 by default.\\nMust be an integer."
    sample_freq: "[00;04mnum[00;00m\\nThe chain is sampled every [00;04mnum[00;00m generations. Set to 1E+3 by default.\\nMust be an integer."
    no_sequences: "[00;00m\\nUse this option to run the sampler without sequence data."
    fast_lk: "[00;00m\\nUse the multivariate normal approximation to the likelihood and speed up calculations\\n"
  }
  output {
    File out_stdout = stdout()
    File out_run_id = "${in_run_id}"
  }
}