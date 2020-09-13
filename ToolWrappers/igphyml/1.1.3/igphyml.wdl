version 1.0

task Igphyml {
  input {
    File? run_id
    Boolean? musertreefilem_only_usedmusertreefilem
    Boolean? part_file
    Boolean? mmodelm_mrequiredmmodelm_substitution
    Boolean? set_transitiontransversion_ratio
    Boolean? omega
    Boolean? hotness
    Boolean? motifs
    Boolean? _frequencies_mempiricalm
    Boolean? f_model
    Boolean? _optimize_focuses
    Boolean? _search_mmovemtree
    Boolean? threads
    Boolean? min_seq
  }
  command <<<
    igphyml \
      ~{if (run_id) then "--run_id" else ""} \
      ~{if (musertreefilem_only_usedmusertreefilem) then "-u" else ""} \
      ~{if (part_file) then "--partfile" else ""} \
      ~{if (mmodelm_mrequiredmmodelm_substitution) then "-m" else ""} \
      ~{if (set_transitiontransversion_ratio) then "-t" else ""} \
      ~{if (omega) then "--omega" else ""} \
      ~{if (hotness) then "--hotness" else ""} \
      ~{if (motifs) then "--motifs" else ""} \
      ~{if (_frequencies_mempiricalm) then "-f" else ""} \
      ~{if (f_model) then "--fmodel" else ""} \
      ~{if (_optimize_focuses) then "-o" else ""} \
      ~{if (_search_mmovemtree) then "-s" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (min_seq) then "--minSeq" else ""}
  >>>
  parameter_meta {
    run_id: "[00;04mID_string[00;00m\\n[00;00mAppend the string [00;04mID_string[00;00m at the end of each output file."
    musertreefilem_only_usedmusertreefilem: "[00;04muser_tree_file[00;00m (only if -i used)\\n[00;04muser_tree_file[00;00m : starting tree filename. The tree must be in Newick format."
    part_file: "[00;04mpartition_file[00;00m (only if -i used)\\n[00;04mpartition_file[00;00m : Partition file specifying CDRs/FWRs for sequence file."
    mmodelm_mrequiredmmodelm_substitution: "[00;04mmodel[00;00m [00;01m(required)\\n[00;04mmodel[00;00m : substitution model name.\\n[00;00mCodon[00;00m based models: [00;04mHLP[00;00m (HLP19) | [00;04mGY[00;00m | [00;04mHLP17[00;00m\\n[00;00mUse GY for quick tree construction.\\nHLP for B cell specific features (see docs)."
    set_transitiontransversion_ratio: "[00;04mts/tv_ratio[00;00m = [e|ce|i|ci|>0]\\nSet the transition/transversion ratio."
    omega: "[00;04momega[00;00m = [e|ce|i|ci|>0]\\nSet number/value of omegas to estimate.\\nFirst value (0) corresponds to FWRs, second (1) to CDRs.\\nMay specify multiple omegas if partition file(s) specified."
    hotness: "[00;04mhotness[00;00m = [e|ce|i|ci|>-1]\\nSet number hot- and coldspot rates to estimate.\\nMay specify multiple values according to --motifs option.\\n'e,e,e,e,e,e' is default."
    motifs: "[00;04mmotifs[00;00m\\nSpecify hot- and coldspot motifs to be modeled.\\n[00;04mmotifs[00;00m = FCH (default) : Free coldspots and hotspots. Estimate separate rates for six canonical motifs.\\nOtherwise, motifs specified by <motif>_<mutable position>:<index_in_hotness>.\\n[00;04mmotifs[00;00m = WRC_2:0 | GYW_0:0 | WA_1:0 | TW_0:0 | SYC_2:0 | GRS_0:0 : Model rate specific motif(s).\\ne.g. [00;04mmotifs[00;00m = WRC_2:0,GYW_0:0 symmetric WR[00;04mC[00;00m/[00;04mG[00;00mYW motifs.\\ne.g. [00;04mmotifs[00;00m = WRC_2:0,GYW_0:1 asymmetric WR[00;04mC[00;00m/[00;04mG[00;00mYW motifs. Must specify two values in --hotness."
    _frequencies_mempiricalm: "(or --frequencies) [00;04mempirical[00;01m, [00;04mmodel[00;00m, [00;04moptimized[00;00m, [00;04mfT,fC,fA,fG[00;00m,\\n[00;04mfT1,fC1,fA1,fG1,fT2,fC2,fA2,fG2,fT3,fC3,fA3,fG3[00;00m\\n[00;01mor[00;00m [00;04mfC1,fC2, ... ,fC64[00;00m\\n[00;04mempirical[00;00m: (GY default) the equilibrium codon frequencies are estimated by counting\\nthe occurence of bases or codons in the alignment.\\n[00;04moptimize[00;00m : (HLP17 default) codon frequencies are estimated using maximum likelihood"
    f_model: "[00;04mfrequency model[00;00m\\nWhich frequency model to use.\\n[00;04mfrequency model[00;00m = [00;04mF1XCODONS[00;00m | [00;04mF1X4[00;00m | [00;04mF3X4[00;00m | [00;04mCF3X4[00;00m (default)"
    _optimize_focuses: "(or --optimize) [00;04mparams[00;00m\\nThis option focuses on specific parameter optimisation.\\n[00;04mparams[00;00m = tlr : (default) tree topology (t), branch length (l) and rate parameters (r) are optimised.\\n[00;04mparams[00;00m = tl  : tree topology and branch length are optimised.\\n[00;04mparams[00;00m = lr  : branch length and rate parameters are optimised.\\n[00;04mparams[00;00m = l   : branch length are optimised.\\n[00;04mparams[00;00m = r   : rate parameters are optimised.\\n[00;04mparams[00;00m = n   : no parameter is optimised."
    _search_mmovemtree: "(or --search) [00;04mmove[00;00m\\nTree topology search operation option.\\nCan be either [00;04mNNI[00;00m (default, fast) or [00;04mSPR[00;00m (thorough, slow)."
    threads: "[00;04mnum_threads[00;00m\\nNumber of threads to use for parallelization. Default is 1."
    min_seq: "[00;04mminimum_sequences[00;00m\\nMinimum number of sequences (including germline) per lineage for inclusion in analysis."
  }
  output {
    File out_stdout = stdout()
    File out_run_id = "${in_run_id}"
  }
}