version 1.0

task SsuCmcalibrate {
  input {
    String? set_rng_seed
    String? forecast
    Boolean? devhelp
    String? exp_cml_glc
    String? exp_cml_loc
    String? exp_hmm_ln_glc
    String? exp_hmm_ln_loc
    String? exp_hmm_lx
    String? exp_fract
    String? exp_tail_n_c_glc
    String? exp_tail_n_cloc
    String? exp_tail_n_h_glc
    String? exp_tail_n_h_loc
    String? exp_tail_p
    String? exp_tail_xn
    String? exp_beta
    Boolean? exp_no_qdb
    String? exp_h_file
    String? exp_s_file
    String? exp_qq_file
    String? exp_f_file
    String? fil_n
    String? fil_f
    String? fil_tau
    Boolean? fil_gem_it
    String? fil_d_file
    String? mx_size
    Boolean? options
  }
  command <<<
    ssu-cmcalibrate \
      ~{if defined(set_rng_seed) then ("-s " +  '"' + set_rng_seed + '"') else ""} \
      ~{if defined(forecast) then ("--forecast " +  '"' + forecast + '"') else ""} \
      ~{true="--devhelp" false="" devhelp} \
      ~{if defined(exp_cml_glc) then ("--exp-cmL-glc " +  '"' + exp_cml_glc + '"') else ""} \
      ~{if defined(exp_cml_loc) then ("--exp-cmL-loc " +  '"' + exp_cml_loc + '"') else ""} \
      ~{if defined(exp_hmm_ln_glc) then ("--exp-hmmLn-glc " +  '"' + exp_hmm_ln_glc + '"') else ""} \
      ~{if defined(exp_hmm_ln_loc) then ("--exp-hmmLn-loc " +  '"' + exp_hmm_ln_loc + '"') else ""} \
      ~{if defined(exp_hmm_lx) then ("--exp-hmmLx " +  '"' + exp_hmm_lx + '"') else ""} \
      ~{if defined(exp_fract) then ("--exp-fract " +  '"' + exp_fract + '"') else ""} \
      ~{if defined(exp_tail_n_c_glc) then ("--exp-tailn-cglc " +  '"' + exp_tail_n_c_glc + '"') else ""} \
      ~{if defined(exp_tail_n_cloc) then ("--exp-tailn-cloc " +  '"' + exp_tail_n_cloc + '"') else ""} \
      ~{if defined(exp_tail_n_h_glc) then ("--exp-tailn-hglc " +  '"' + exp_tail_n_h_glc + '"') else ""} \
      ~{if defined(exp_tail_n_h_loc) then ("--exp-tailn-hloc " +  '"' + exp_tail_n_h_loc + '"') else ""} \
      ~{if defined(exp_tail_p) then ("--exp-tailp " +  '"' + exp_tail_p + '"') else ""} \
      ~{if defined(exp_tail_xn) then ("--exp-tailxn " +  '"' + exp_tail_xn + '"') else ""} \
      ~{if defined(exp_beta) then ("--exp-beta " +  '"' + exp_beta + '"') else ""} \
      ~{true="--exp-no-qdb" false="" exp_no_qdb} \
      ~{if defined(exp_h_file) then ("--exp-hfile " +  '"' + exp_h_file + '"') else ""} \
      ~{if defined(exp_s_file) then ("--exp-sfile " +  '"' + exp_s_file + '"') else ""} \
      ~{if defined(exp_qq_file) then ("--exp-qqfile " +  '"' + exp_qq_file + '"') else ""} \
      ~{if defined(exp_f_file) then ("--exp-ffile " +  '"' + exp_f_file + '"') else ""} \
      ~{if defined(fil_n) then ("--fil-N " +  '"' + fil_n + '"') else ""} \
      ~{if defined(fil_f) then ("--fil-F " +  '"' + fil_f + '"') else ""} \
      ~{if defined(fil_tau) then ("--fil-tau " +  '"' + fil_tau + '"') else ""} \
      ~{true="--fil-gemit" false="" fil_gem_it} \
      ~{if defined(fil_d_file) then ("--fil-dfile " +  '"' + fil_d_file + '"') else ""} \
      ~{if defined(mx_size) then ("--mxsize " +  '"' + mx_size + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    set_rng_seed: ": set RNG seed to <n> (if 0: one-time arbitrary seed)  [181]"
    forecast: ": don't do calibration, forecast running time with <n> processors"
    devhelp: ": show list of undocumented developer options"
    exp_cml_glc: ": set glocal  CM     Mb random seq length to <x>"
    exp_cml_loc: ": set  local  CM     Mb random seq length to <x>"
    exp_hmm_ln_glc: ": set glocal HMM min Mb random seq length to <x>"
    exp_hmm_ln_loc: ": set  local HMM min Mb random seq length to <x>"
    exp_hmm_lx: ": set        HMM max Mb random seq length to <x>"
    exp_fract: ": set min fraction of HMM vs CM DP calcs to <x>"
    exp_tail_n_c_glc: ": fit the top <n> hits/Mb in histogram for  CM local modes"
    exp_tail_n_cloc: ": fit the top <n> hits/Mb in histogram for  CM glocal modes"
    exp_tail_n_h_glc: ": fit the top <n> hits/Mb in histogram for HMM local modes"
    exp_tail_n_h_loc: ": fit the top <n> hits/Mb in histogram for HMM glocal modes"
    exp_tail_p: ": set fraction of histogram tail to fit to exp tail to <x>"
    exp_tail_xn: ": w/--exp-tailp, set max num hits in tail to fit as <n>"
    exp_beta: ": set tail loss prob for QDB to <x>"
    exp_no_qdb: ": do not use QDBs for calibrating CM search modes"
    exp_h_file: ": save fitted score histogram(s) to file <f>"
    exp_s_file: ": save survival plot to file <f>"
    exp_qq_file: ": save Q-Q plot for score histogram(s) to file <f>"
    exp_f_file: ": save lambdas for different tail fit probs to file <f>"
    fil_n: ": number of emitted sequences for HMM filter threshold calc"
    fil_f: ": required fraction of seqs that survive HMM filter"
    fil_tau: ": set tail loss prob for HMM banding <x>"
    fil_gem_it: ": during filter thresholding, always emit globally from CM"
    fil_d_file: ": save filter threshold data (HMM and CM scores) to file <s>"
    mx_size: ": set maximum allowable HMM banded DP matrix size to <x> Mb"
    options: ""
  }
}