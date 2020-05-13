class: CommandLineTool
id: cmcalibrate.cwl
inputs:
- id: cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: l
  doc: ': set random seq length to search in Mb to <x>  [1.6]  (0.01<=x<=160.)'
  type: string
  inputBinding:
    prefix: -L
- id: forecast
  doc: ": don't do calibration, predict running time and exit"
  type: boolean
  inputBinding:
    prefix: --forecast
- id: n_forecast
  doc: ': w/--forecast, predict time with <n> processors (maybe for MPI)'
  type: string
  inputBinding:
    prefix: --nforecast
- id: mem_req
  doc: ": don't do calibration, print required memory and exit"
  type: boolean
  inputBinding:
    prefix: --memreq
- id: no_forecast
  doc: ': do calibration, but skip running time prediction'
  type: boolean
  inputBinding:
    prefix: --noforecast
- id: g_tail_n
  doc: ': fit the top <n> hits/Mb in histogram for glocal modes [df: 250]'
  type: string
  inputBinding:
    prefix: --gtailn
- id: l_tail_n
  doc: ': fit the top <n> hits/Mb in histogram for  local modes [df: 750]'
  type: string
  inputBinding:
    prefix: --ltailn
- id: tail_p
  doc: ': set fraction of histogram tail to fit to exp tail to <x>'
  type: string
  inputBinding:
    prefix: --tailp
- id: h_file
  doc: ': save fitted score histogram(s) to file <f>'
  type: string
  inputBinding:
    prefix: --hfile
- id: s_file
  doc: ': save survival plot to file <f>'
  type: string
  inputBinding:
    prefix: --sfile
- id: qq_file
  doc: ': save Q-Q plot for score histograms to file <f>'
  type: string
  inputBinding:
    prefix: --qqfile
- id: f_file
  doc: ': save lambdas for different tail fit probs to file <f>'
  type: string
  inputBinding:
    prefix: --ffile
- id: x_file
  doc: ': save scores in fit tail to file <f>'
  type: string
  inputBinding:
    prefix: --xfile
- id: seed
  doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)'
  type: string
  inputBinding:
    prefix: --seed
- id: beta
  doc: ': set tail loss prob for query dependent banding (QDB) to <x>'
  type: string
  inputBinding:
    prefix: --beta
- id: non_banded
  doc: ': do not use QDB'
  type: boolean
  inputBinding:
    prefix: --nonbanded
- id: nonull3
  doc: ': turn OFF the NULL3 post hoc additional null model'
  type: boolean
  inputBinding:
    prefix: --nonull3
- id: random
  doc: ': use GC content of random null background model of CM'
  type: boolean
  inputBinding:
    prefix: --random
- id: gc
  doc: ': use GC content distribution from file <f>'
  type: string
  inputBinding:
    prefix: --gc
- id: cpu
  doc: ': number of parallel CPU workers to use for multithreads'
  type: string
  inputBinding:
    prefix: --cpu
outputs: []
cwlVersion: v1.1
baseCommand:
- cmcalibrate
