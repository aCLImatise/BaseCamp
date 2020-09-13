version 1.0

task Phyrex {
  input {
    Boolean? _datatype_mdatatypemmdatatypem
    Boolean? or__sequential
    Boolean? _multiple_mnbdatasetsmmnbdatasetsm
    Boolean? or__parsm
    Boolean? _bootstrap_mintmmintm
    Boolean? t_be
    Boolean? _model_mmodelmmodelm
    Boolean? aa_rate_file
    Boolean? mem_mmm_mfafcfgftmmem
    Boolean? _tstv_mtstvratiomtstvratiom
    Boolean? _pinv_mpropinvarmpropinvarm
    Boolean? _nclasses_mnbsubstcatmnbsubstcatm
    Boolean? free_rates
    Boolean? _alpha_mgammamgammam
    Boolean? _search_mmovemtree
    Boolean? _inputtree_musertreefilemusertreefilem
    Boolean? option_focuses_specific
    Boolean? rand_start
    Boolean? n_rand_starts
    Boolean? r_seed
    Boolean? print_site_lnl
    Boolean? print_trace
    File? run_id
    Boolean? quiet
    Boolean? no_memory_check
    Boolean? leave_duplicates
    Boolean? alias_sub_patt
    Boolean? boot_progress_display
  }
  command <<<
    phyrex \
      ~{if (_datatype_mdatatypemmdatatypem) then "-d" else ""} \
      ~{if (or__sequential) then "-q" else ""} \
      ~{if (_multiple_mnbdatasetsmmnbdatasetsm) then "-n" else ""} \
      ~{if (or__parsm) then "-p" else ""} \
      ~{if (_bootstrap_mintmmintm) then "-b" else ""} \
      ~{if (t_be) then "--tbe" else ""} \
      ~{if (_model_mmodelmmodelm) then "-m" else ""} \
      ~{if (aa_rate_file) then "--aa_rate_file" else ""} \
      ~{if (mem_mmm_mfafcfgftmmem) then "-f" else ""} \
      ~{if (_tstv_mtstvratiomtstvratiom) then "-t" else ""} \
      ~{if (_pinv_mpropinvarmpropinvarm) then "-v" else ""} \
      ~{if (_nclasses_mnbsubstcatmnbsubstcatm) then "-c" else ""} \
      ~{if (free_rates) then "--freerates" else ""} \
      ~{if (_alpha_mgammamgammam) then "-a" else ""} \
      ~{if (_search_mmovemtree) then "-s" else ""} \
      ~{if (_inputtree_musertreefilemusertreefilem) then "-u" else ""} \
      ~{if (option_focuses_specific) then "-o" else ""} \
      ~{if (rand_start) then "--rand_start" else ""} \
      ~{if (n_rand_starts) then "--n_rand_starts" else ""} \
      ~{if (r_seed) then "--r_seed" else ""} \
      ~{if (print_site_lnl) then "--print_site_lnl" else ""} \
      ~{if (print_trace) then "--print_trace" else ""} \
      ~{if (run_id) then "--run_id" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (no_memory_check) then "--no_memory_check" else ""} \
      ~{if (leave_duplicates) then "--leave_duplicates" else ""} \
      ~{if (alias_sub_patt) then "--alias_subpatt" else ""} \
      ~{if (boot_progress_display) then "--boot_progress_display" else ""}
  >>>
  parameter_meta {
    _datatype_mdatatypemmdatatypem: "(or --datatype) [00;04mdata_type[00;00m\\n[00;04mdata_type[00;00m is 'nt' for nucleotide (default), 'aa' for amino-acid sequences, or 'generic',\\n(use NEXUS file format and the 'symbols' parameter here)."
    or__sequential: "(or --sequential)"
    _multiple_mnbdatasetsmmnbdatasetsm: "(or --multiple) [00;04mnb_data_sets[00;00m\\n[00;04mnb_data_sets[00;00m is an integer corresponding to the number of data sets to analyse."
    or__parsm: "(or --pars)[00;00m"
    _bootstrap_mintmmintm: "(or --bootstrap) [00;04mint[00;00m\\n[00;04mint[00;00m >  0: [00;04mint[00;00m is the number of bootstrap replicates.\\n[00;04mint[00;00m =  0: neither approximate likelihood ratio test nor bootstrap values are computed.\\n[00;04mint[00;00m = -1: approximate likelihood ratio test returning aLRT statistics.\\n[00;04mint[00;00m = -2: approximate likelihood ratio test returning Chi2-based parametric branch supports.\\n[00;04mint[00;00m = -4: SH-like branch supports alone.\\n[00;04mint[00;00m = -5: (default) approximate Bayes branch supports."
    t_be: "[00;00m\\nComputes TBE instead of FBP (standard) bootstrap support\\nHas no effect with -b <= 0"
    _model_mmodelmmodelm: "(or --model) [00;04mmodel[00;00m\\nmodel[00;00m : substitution model name.\\n[00;00m- [00;04mNucleotide[00;00m-based models : [00;04mHKY85[00;00m (default) | [00;04mJC69[00;00m | [00;04mK80[00;00m | [00;04mF81[00;00m | [00;04mF84[00;00m\\n[00;04mTN93[00;00m | [00;04mGTR[00;00m | [00;04mcustom (*)[00;00m\\n(*) : for the custom option, a string of six digits identifies the model. For instance, 000000\\ncorresponds to F81 (or JC69 provided the distribution of nucleotide frequencies is uniform).\\n012345 corresponds to GTR. This option can be used for encoding any model that is a nested within GTR.\\n[00;00m- [00;04mAmino-acid[00;00m based models : [00;04mLG[00;00m (default) | [00;04mWAG[00;00m | [00;04mJTT[00;00m | [00;04mMtREV[00;00m | [00;04mDayhoff[00;00m | [00;04mDCMut[00;00m\\n[00;04mRtREV[00;00m | [00;04mCpREV[00;00m | [00;04mVT[00;00m | [00;04mAB[00;00m | [00;04mBlosum62[00;00m | [00;04mMtMam[00;00m | [00;04mMtArt[00;00m\\n[00;04mHIVw[00;00m |  [00;04mHIVb[00;00m | [00;04mcustom[00;00m"
    aa_rate_file: "[00;04mfilename[00;00m\\n[00;04mfilename[00;00m is the name of the file that provides the amino acid substitution rate matrix in PAML format.\\nIt is compulsory to use this option when analysing amino acid sequences with the `custom' model."
    mem_mmm_mfafcfgftmmem: "[00;04me[00;01m, [00;04mm[00;01m, or [00;04mfA,fC,fG,fT[00;00m\\n[00;04me[00;00m : the character frequencies are determined as follows :"
    _tstv_mtstvratiomtstvratiom: "(or --ts/tv) [00;04mts/tv_ratio[00;00m\\nts/tv_ratio[00;00m : transition/transversion ratio. DNA sequences only.\\nCan be a fixed positive value (ex:4.0) or [00;04me[00;00m to get the maximum likelihood estimate."
    _pinv_mpropinvarmpropinvarm: "(or --pinv) [00;04mprop_invar[00;00m\\nprop_invar[00;00m : proportion of invariable sites.\\nCan be a fixed value in the [0,1] range or [00;04me[00;00m to get the maximum likelihood estimate."
    _nclasses_mnbsubstcatmnbsubstcatm: "(or --nclasses) [00;04mnb_subst_cat[00;00m\\nnb_subst_cat[00;00m : number of relative substitution rate categories. Default : [00;04mnb_subst_cat[00;00m=4.\\nMust be a positive integer."
    free_rates: "(or --free_rates or --freerate or --free_rate)\\n[00;00m FreeRate model of substitution rate variation across sites."
    _alpha_mgammamgammam: "(or --alpha) [00;04mgamma[00;00m\\ngamma[00;00m : distribution of the gamma distribution shape parameter.\\nCan be a fixed positive value or [00;04me[00;00m to get the maximum likelihood estimate."
    _search_mmovemtree: "(or --search) [00;04mmove[00;00m\\nTree topology search operation option.\\nCan be either [00;04mNNI[00;00m (default, fast) or [00;04mSPR[00;00m (a bit slower than NNI) or [00;04mBEST[00;00m (best of NNI and SPR search)."
    _inputtree_musertreefilemusertreefilem: "(or --inputtree) [00;04muser_tree_file[00;00m\\nuser_tree_file[00;00m : starting tree filename. The tree must be in Newick format."
    option_focuses_specific: "[00;04mparams[00;00m\\nThis option focuses on specific parameter optimisation.\\n[00;04mparams[00;00m=tlr : tree topology (t), branch length (l) and rate parameters (r) are optimised.\\n[00;04mparams[00;00m=tl  : tree topology and branch length are optimised.\\n[00;04mparams[00;00m=lr  : branch length and rate parameters are optimised.\\n[00;04mparams[00;00m=l   : branch length are optimised.\\n[00;04mparams[00;00m=r   : rate parameters are optimised.\\n[00;04mparams[00;00m=n   : no parameter is optimised."
    rand_start: "[00;00m\\nThis option sets the initial tree to random.\\nIt is only valid if SPR searches are to be performed."
    n_rand_starts: "[00;04mnum[00;00m\\nnum[00;00m is the number of initial random trees to be used.\\nIt is only valid if SPR searches are to be performed."
    r_seed: "[00;04mnum[00;00m\\nnum[00;00m is the seed used to initiate the random number generator.\\nMust be an integer."
    print_site_lnl: "[00;00m\\n[00;00mPrint the likelihood for each site in file *_phyml_lk.txt."
    print_trace: "[00;00m\\n[00;00mPrint each phylogeny explored during the tree search process\\n[00;00min file *_phyml_trace.txt."
    run_id: "[00;04mID_string[00;00m\\n[00;00mAppend the string [00;04mID_string[00;00m at the end of each PhyML output file.\\n[00;00mThis option may be useful when running simulations involving PhyML."
    quiet: "[00;00m\\n[00;00mNo interactive question (for running in batch mode) and quiet output."
    no_memory_check: "[00;00m\\n[00;00mNo interactive question for memory usage (for running in batch mode). Normal output otherwise."
    leave_duplicates: "[00;00m\\n[00;00mPhyML removes duplicate sequences by default. Use this option to leave them in."
    alias_sub_patt: "[00;00m\\n[00;00mSite aliasing is generalized at the subtree level. Sometimes lead to faster calculations.\\n[00;00mSee Kosakovsky Pond SL, Muse SV, Sytematic Biology (2004) for an example."
    boot_progress_display: "[00;04mnum[00;00m (default=20)\\n[00;04mnum[00;00m is the frequency at which the bootstrap progress bar will be updated.\\nMust be an integer.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_run_id = "${in_run_id}"
  }
}