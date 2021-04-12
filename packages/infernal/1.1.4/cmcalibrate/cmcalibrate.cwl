class: CommandLineTool
id: cmcalibrate.cwl
inputs:
- id: in_set_random_length
  doc: ': set random seq length to search in Mb to <x>  [1.6]  (0.01<=x<=160.)'
  type: long?
  inputBinding:
    prefix: -L
- id: in_forecast
  doc: ": don't do calibration, predict running time and exit"
  type: boolean?
  inputBinding:
    prefix: --forecast
- id: in_n_forecast
  doc: ': w/--forecast, predict time with <n> processors (maybe for MPI)'
  type: string?
  inputBinding:
    prefix: --nforecast
- id: in_mem_req
  doc: ": don't do calibration, print required memory and exit"
  type: boolean?
  inputBinding:
    prefix: --memreq
- id: in_no_forecast
  doc: ': do calibration, but skip running time prediction'
  type: boolean?
  inputBinding:
    prefix: --noforecast
- id: in_g_tail_n
  doc: ': fit the top <n> hits/Mb in histogram for glocal modes [df: 250]'
  type: long?
  inputBinding:
    prefix: --gtailn
- id: in_l_tail_n
  doc: ': fit the top <n> hits/Mb in histogram for  local modes [df: 750]'
  type: long?
  inputBinding:
    prefix: --ltailn
- id: in_tail_p
  doc: ': set fraction of histogram tail to fit to exp tail to <x>'
  type: string?
  inputBinding:
    prefix: --tailp
- id: in_h_file
  doc: ': save fitted score histogram(s) to file <f>'
  type: File?
  inputBinding:
    prefix: --hfile
- id: in_s_file
  doc: ': save survival plot to file <f>'
  type: File?
  inputBinding:
    prefix: --sfile
- id: in_qq_file
  doc: ': save Q-Q plot for score histograms to file <f>'
  type: File?
  inputBinding:
    prefix: --qqfile
- id: in_f_file
  doc: ': save lambdas for different tail fit probs to file <f>'
  type: File?
  inputBinding:
    prefix: --ffile
- id: in_x_file
  doc: ': save scores in fit tail to file <f>'
  type: File?
  inputBinding:
    prefix: --xfile
- id: in_seed
  doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_beta
  doc: ': set tail loss prob for query dependent banding (QDB) to <x>'
  type: string?
  inputBinding:
    prefix: --beta
- id: in_non_banded
  doc: ': do not use QDB'
  type: boolean?
  inputBinding:
    prefix: --nonbanded
- id: in_no_null_three
  doc: ': turn OFF the NULL3 post hoc additional null model'
  type: boolean?
  inputBinding:
    prefix: --nonull3
- id: in_random
  doc: ': use GC content of random null background model of CM'
  type: boolean?
  inputBinding:
    prefix: --random
- id: in_gc
  doc: ': use GC content distribution from file <f>'
  type: File?
  inputBinding:
    prefix: --gc
- id: in_cpu
  doc: ': number of parallel CPU workers to use for multithreads'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/infernal:1.1.4--h779adbc_0
cwlVersion: v1.1
baseCommand:
- cmcalibrate
