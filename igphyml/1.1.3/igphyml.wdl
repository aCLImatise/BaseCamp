version 1.0

task Igphyml {
  input {
    Boolean? musertreefilem_only_used
    Boolean? mmodelm_mrequired_mmodelm
    Boolean? set_transitiontransversion_ratio
    Boolean? omega
    Boolean? _frequencies_mempiricalm
    Boolean? _optimize_mparamsm
    Boolean? _search_mmovem
  }
  command <<<
    igphyml \
      ~{true="-u" false="" musertreefilem_only_used} \
      ~{true="-m" false="" mmodelm_mrequired_mmodelm} \
      ~{true="-t" false="" set_transitiontransversion_ratio} \
      ~{true="--omega" false="" omega} \
      ~{true="-f" false="" _frequencies_mempiricalm} \
      ~{true="-o" false="" _optimize_mparamsm} \
      ~{true="-s" false="" _search_mmovem}
  >>>
  parameter_meta {
    musertreefilem_only_used: "[00;04muser_tree_file[00;00m (only if -i used) [00;04muser_tree_file[00;00m : starting tree filename. The tree must be in Newick format."
    mmodelm_mrequired_mmodelm: "[00;04mmodel[00;00m [00;01m(required) [00;04mmodel[00;00m : substitution model name. [00;00mCodon[00;00m based models: [00;04mHLP[00;00m (HLP19) | [00;04mGY[00;00m | [00;04mHLP17[00;00m [00;00mUse GY for quick tree construction. HLP for B cell specific features (see docs)."
    set_transitiontransversion_ratio: "[00;04mts/tv_ratio[00;00m = [e|ce|i|ci|>0] Set the transition/transversion ratio."
    omega: "[00;04momega[00;00m = [e|ce|i|ci|>0] Set number/value of omegas to estimate. First value (0) corresponds to FWRs, second (1) to CDRs. May specify multiple omegas if partition file(s) specified."
    _frequencies_mempiricalm: "(or --frequencies) [00;04mempirical[00;01m, [00;04mmodel[00;00m, [00;04moptimized[00;00m, [00;04mfT,fC,fA,fG[00;00m, [00;04mfT1,fC1,fA1,fG1,fT2,fC2,fA2,fG2,fT3,fC3,fA3,fG3[00;00m [00;01mor[00;00m [00;04mfC1,fC2, ... ,fC64[00;00m [00;04mempirical[00;00m: (GY default) the equilibrium codon frequencies are estimated by counting the occurence of bases or codons in the alignment. [00;04moptimize[00;00m : (HLP17 default) codon frequencies are estimated using maximum likelihood"
    _optimize_mparamsm: "(or --optimize) [00;04mparams[00;00m This option focuses on specific parameter optimisation. [00;04mparams[00;00m = tlr : (default) tree topology (t), branch length (l) and rate parameters (r) are optimised. [00;04mparams[00;00m = tl  : tree topology and branch length are optimised. [00;04mparams[00;00m = lr  : branch length and rate parameters are optimised. [00;04mparams[00;00m = l   : branch length are optimised. [00;04mparams[00;00m = r   : rate parameters are optimised. [00;04mparams[00;00m = n   : no parameter is optimised."
    _search_mmovem: "(or --search) [00;04mmove[00;00m Tree topology search operation option. Can be either [00;04mNNI[00;00m (default, fast) or [00;04mSPR[00;00m (thorough, slow)."
  }
}