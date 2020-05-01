#!/usr/bin/env cwl-runner

baseCommand:
- cmcalibrate
class: CommandLineTool
cwlVersion: v1.0
id: cmcalibrate
inputs:
- doc: ''
  id: cm_file
  inputBinding:
    position: 0
  type: string
- doc: ': set random seq length to search in Mb to <x>  [1.6]  (0.01<=x<=160.)'
  id: l
  inputBinding:
    prefix: -L
  type: string
- doc: ": don't do calibration, predict running time and exit"
  id: forecast
  inputBinding:
    prefix: --forecast
  type: boolean
- doc: ': w/--forecast, predict time with <n> processors (maybe for MPI)'
  id: n_forecast
  inputBinding:
    prefix: --nforecast
  type: string
- doc: ": don't do calibration, print required memory and exit"
  id: mem_req
  inputBinding:
    prefix: --memreq
  type: boolean
- doc: ': do calibration, but skip running time prediction'
  id: no_forecast
  inputBinding:
    prefix: --noforecast
  type: boolean
- doc: ': fit the top <n> hits/Mb in histogram for glocal modes [df: 250]'
  id: g_tail_n
  inputBinding:
    prefix: --gtailn
  type: string
- doc: ': fit the top <n> hits/Mb in histogram for  local modes [df: 750]'
  id: l_tail_n
  inputBinding:
    prefix: --ltailn
  type: string
- doc: ': set fraction of histogram tail to fit to exp tail to <x>'
  id: tail_p
  inputBinding:
    prefix: --tailp
  type: string
- doc: ': save fitted score histogram(s) to file <f>'
  id: h_file
  inputBinding:
    prefix: --hfile
  type: string
- doc: ': save survival plot to file <f>'
  id: s_file
  inputBinding:
    prefix: --sfile
  type: string
- doc: ': save Q-Q plot for score histograms to file <f>'
  id: qq_file
  inputBinding:
    prefix: --qqfile
  type: string
- doc: ': save lambdas for different tail fit probs to file <f>'
  id: f_file
  inputBinding:
    prefix: --ffile
  type: string
- doc: ': save scores in fit tail to file <f>'
  id: x_file
  inputBinding:
    prefix: --xfile
  type: string
- doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ': set tail loss prob for query dependent banding (QDB) to <x>'
  id: beta
  inputBinding:
    prefix: --beta
  type: string
- doc: ': do not use QDB'
  id: non_banded
  inputBinding:
    prefix: --nonbanded
  type: boolean
- doc: ': turn OFF the NULL3 post hoc additional null model'
  id: nonull3
  inputBinding:
    prefix: --nonull3
  type: boolean
- doc: ': use GC content of random null background model of CM'
  id: random
  inputBinding:
    prefix: --random
  type: boolean
- doc: ': use GC content distribution from file <f>'
  id: gc
  inputBinding:
    prefix: --gc
  type: string
- doc: ': number of parallel CPU workers to use for multithreads'
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
