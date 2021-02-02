class: CommandLineTool
id: ../../../ssu_cmcalibrate.cwl
inputs:
- id: in_set_rng_seed
  doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [181]'
  type: long
  inputBinding:
    prefix: -s
- id: in_forecast
  doc: ": don't do calibration, forecast running time with <n> processors"
  type: string
  inputBinding:
    prefix: --forecast
- id: in_devhelp
  doc: ': show list of undocumented developer options'
  type: boolean
  inputBinding:
    prefix: --devhelp
- id: in_exp_cml_glc
  doc: ': set glocal  CM     Mb random seq length to <x>'
  type: long
  inputBinding:
    prefix: --exp-cmL-glc
- id: in_exp_cml_loc
  doc: ': set  local  CM     Mb random seq length to <x>'
  type: long
  inputBinding:
    prefix: --exp-cmL-loc
- id: in_exp_hmm_ln_glc
  doc: ': set glocal HMM min Mb random seq length to <x>'
  type: long
  inputBinding:
    prefix: --exp-hmmLn-glc
- id: in_exp_hmm_ln_loc
  doc: ': set  local HMM min Mb random seq length to <x>'
  type: long
  inputBinding:
    prefix: --exp-hmmLn-loc
- id: in_exp_hmm_lx
  doc: ': set        HMM max Mb random seq length to <x>'
  type: long
  inputBinding:
    prefix: --exp-hmmLx
- id: in_exp_fract
  doc: ': set min fraction of HMM vs CM DP calcs to <x>'
  type: long
  inputBinding:
    prefix: --exp-fract
- id: in_exp_tail_n_c_glc
  doc: ': fit the top <n> hits/Mb in histogram for  CM local modes'
  type: string
  inputBinding:
    prefix: --exp-tailn-cglc
- id: in_exp_tail_n_cloc
  doc: ': fit the top <n> hits/Mb in histogram for  CM glocal modes'
  type: string
  inputBinding:
    prefix: --exp-tailn-cloc
- id: in_exp_tail_n_h_glc
  doc: ': fit the top <n> hits/Mb in histogram for HMM local modes'
  type: string
  inputBinding:
    prefix: --exp-tailn-hglc
- id: in_exp_tail_n_h_loc
  doc: ': fit the top <n> hits/Mb in histogram for HMM glocal modes'
  type: string
  inputBinding:
    prefix: --exp-tailn-hloc
- id: in_exp_tail_p
  doc: ': set fraction of histogram tail to fit to exp tail to <x>'
  type: string
  inputBinding:
    prefix: --exp-tailp
- id: in_exp_tail_xn
  doc: ': w/--exp-tailp, set max num hits in tail to fit as <n>'
  type: long
  inputBinding:
    prefix: --exp-tailxn
- id: in_exp_beta
  doc: ': set tail loss prob for QDB to <x>'
  type: string
  inputBinding:
    prefix: --exp-beta
- id: in_exp_no_qdb
  doc: ': do not use QDBs for calibrating CM search modes'
  type: boolean
  inputBinding:
    prefix: --exp-no-qdb
- id: in_exp_h_file
  doc: ': save fitted score histogram(s) to file <f>'
  type: File
  inputBinding:
    prefix: --exp-hfile
- id: in_exp_s_file
  doc: ': save survival plot to file <f>'
  type: File
  inputBinding:
    prefix: --exp-sfile
- id: in_exp_qq_file
  doc: ': save Q-Q plot for score histogram(s) to file <f>'
  type: File
  inputBinding:
    prefix: --exp-qqfile
- id: in_exp_f_file
  doc: ': save lambdas for different tail fit probs to file <f>'
  type: File
  inputBinding:
    prefix: --exp-ffile
- id: in_fil_n
  doc: ': number of emitted sequences for HMM filter threshold calc'
  type: long
  inputBinding:
    prefix: --fil-N
- id: in_fil_f
  doc: ': required fraction of seqs that survive HMM filter'
  type: string
  inputBinding:
    prefix: --fil-F
- id: in_fil_tau
  doc: ': set tail loss prob for HMM banding <x>'
  type: string
  inputBinding:
    prefix: --fil-tau
- id: in_fil_gem_it
  doc: ': during filter thresholding, always emit globally from CM'
  type: boolean
  inputBinding:
    prefix: --fil-gemit
- id: in_fil_d_file
  doc: ': save filter threshold data (HMM and CM scores) to file <s>'
  type: File
  inputBinding:
    prefix: --fil-dfile
- id: in_mx_size
  doc: ': set maximum allowable HMM banded DP matrix size to <x> Mb'
  type: long
  inputBinding:
    prefix: --mxsize
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ssu-cmcalibrate
