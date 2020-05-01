#!/usr/bin/env cwl-runner

baseCommand:
- ssu-cmcalibrate
class: CommandLineTool
cwlVersion: v1.0
id: ssu-cmcalibrate
inputs:
- doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [181]'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: ": don't do calibration, forecast running time with <n> processors"
  id: forecast
  inputBinding:
    prefix: --forecast
  type: string
- doc: ': show list of undocumented developer options'
  id: devhelp
  inputBinding:
    prefix: --devhelp
  type: boolean
- doc: ': set glocal  CM     Mb random seq length to <x>'
  id: exp_cml_glc
  inputBinding:
    prefix: --exp-cmL-glc
  type: string
- doc: ': set  local  CM     Mb random seq length to <x>'
  id: exp_cml_loc
  inputBinding:
    prefix: --exp-cmL-loc
  type: string
- doc: ': set glocal HMM min Mb random seq length to <x>'
  id: exp_hmm_ln_glc
  inputBinding:
    prefix: --exp-hmmLn-glc
  type: string
- doc: ': set  local HMM min Mb random seq length to <x>'
  id: exp_hmm_ln_loc
  inputBinding:
    prefix: --exp-hmmLn-loc
  type: string
- doc: ': set        HMM max Mb random seq length to <x>'
  id: exp_hmm_lx
  inputBinding:
    prefix: --exp-hmmLx
  type: string
- doc: ': set min fraction of HMM vs CM DP calcs to <x>'
  id: exp_fract
  inputBinding:
    prefix: --exp-fract
  type: string
- doc: ': fit the top <n> hits/Mb in histogram for  CM local modes'
  id: exp_tail_n_c_glc
  inputBinding:
    prefix: --exp-tailn-cglc
  type: string
- doc: ': fit the top <n> hits/Mb in histogram for  CM glocal modes'
  id: exp_tail_n_cloc
  inputBinding:
    prefix: --exp-tailn-cloc
  type: string
- doc: ': fit the top <n> hits/Mb in histogram for HMM local modes'
  id: exp_tail_n_h_glc
  inputBinding:
    prefix: --exp-tailn-hglc
  type: string
- doc: ': fit the top <n> hits/Mb in histogram for HMM glocal modes'
  id: exp_tail_n_h_loc
  inputBinding:
    prefix: --exp-tailn-hloc
  type: string
- doc: ': set fraction of histogram tail to fit to exp tail to <x>'
  id: exp_tail_p
  inputBinding:
    prefix: --exp-tailp
  type: string
- doc: ': w/--exp-tailp, set max num hits in tail to fit as <n>'
  id: exp_tail_xn
  inputBinding:
    prefix: --exp-tailxn
  type: string
- doc: ': set tail loss prob for QDB to <x>'
  id: exp_beta
  inputBinding:
    prefix: --exp-beta
  type: string
- doc: ': do not use QDBs for calibrating CM search modes'
  id: exp_no_qdb
  inputBinding:
    prefix: --exp-no-qdb
  type: boolean
- doc: ': save fitted score histogram(s) to file <f>'
  id: exp_h_file
  inputBinding:
    prefix: --exp-hfile
  type: string
- doc: ': save survival plot to file <f>'
  id: exp_s_file
  inputBinding:
    prefix: --exp-sfile
  type: string
- doc: ': save Q-Q plot for score histogram(s) to file <f>'
  id: exp_qq_file
  inputBinding:
    prefix: --exp-qqfile
  type: string
- doc: ': save lambdas for different tail fit probs to file <f>'
  id: exp_f_file
  inputBinding:
    prefix: --exp-ffile
  type: string
- doc: ': number of emitted sequences for HMM filter threshold calc'
  id: fil_n
  inputBinding:
    prefix: --fil-N
  type: string
- doc: ': required fraction of seqs that survive HMM filter'
  id: fil_f
  inputBinding:
    prefix: --fil-F
  type: string
- doc: ': set tail loss prob for HMM banding <x>'
  id: fil_tau
  inputBinding:
    prefix: --fil-tau
  type: string
- doc: ': during filter thresholding, always emit globally from CM'
  id: fil_gem_it
  inputBinding:
    prefix: --fil-gemit
  type: boolean
- doc: ': save filter threshold data (HMM and CM scores) to file <s>'
  id: fil_d_file
  inputBinding:
    prefix: --fil-dfile
  type: string
- doc: ': set maximum allowable HMM banded DP matrix size to <x> Mb'
  id: mx_size
  inputBinding:
    prefix: --mxsize
  type: string
