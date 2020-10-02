class: CommandLineTool
id: multigps.cwl
inputs:
- id: in_out
  doc: "--threads <number of threads to use (default=1)>\n--verbose [flag to print\
    \ intermediate files and extra output]\n--config <config file: all options here\
    \ can be specified in a name<space>value text file, over-ridden by command-line\
    \ args>"
  type: File
  inputBinding:
    prefix: --out
- id: in_geninfo
  doc: AND --seq <fasta seq directory reqd if using motif prior>
  type: File
  inputBinding:
    prefix: --geninfo
- id: in_expt
  doc: "AND --format <SAM/BED/SCIDX>\n--ctrl <file name (optional argument. must be\
    \ same format as expt files)>\n--design <experiment design file name to use instead\
    \ of --expt and --ctrl; see website for format>\n--fixedpb <fixed per base limit\
    \ (default: estimated from background model)>\n--poissongausspb <filter per base\
    \ using a Poisson threshold parameterized by a local Gaussian sliding window>\n\
    --nonunique [flag to use non-unique reads]\n--mappability <fraction of the genome\
    \ that is mappable for these experiments (default=0.8)>\n--nocache [flag to turn\
    \ off caching of the entire set of experiments (i.e. run slower with less memory)]"
  type: File
  inputBinding:
    prefix: --expt
- id: in_no_scaling
  doc: '[flag to turn off auto estimation of signal vs control scaling factor]'
  type: boolean
  inputBinding:
    prefix: --noscaling
- id: in_median_scale
  doc: '[flag to use scaling by median ratio (default = scaling by NCIS)]'
  type: boolean
  inputBinding:
    prefix: --medianscale
- id: in_regression_scale
  doc: '[flag to use scaling by regression (default = scaling by NCIS)]'
  type: boolean
  inputBinding:
    prefix: --regressionscale
- id: in_ses_scale
  doc: '[flag to use scaling by SES (default = scaling by NCIS)]'
  type: boolean
  inputBinding:
    prefix: --sesscale
- id: in_fixed_scaling
  doc: '<multiply control counts by total tag count ratio and then by this factor
    (default: NCIS)>'
  type: boolean
  inputBinding:
    prefix: --fixedscaling
- id: in_scale_win
  doc: <window size for scaling procedure (default=10000)>
  type: boolean
  inputBinding:
    prefix: --scalewin
- id: in_plot_scaling
  doc: '[flag to plot diagnostic information for the chosen scaling method]'
  type: boolean
  inputBinding:
    prefix: --plotscaling
- id: in__r_max
  doc: "--r <max. model update rounds, default=3>\n--nomodelupdate [flag to turn off\
    \ binding model updates]\n--minmodelupdateevents <minimum number of events to\
    \ support an update (default=500)>\n--nomodelsmoothing [flag to turn off binding\
    \ model smoothing]\n--splinesmoothparam <spline smoothing parameter (default=30)>\n\
    --gaussmodelsmoothing [flag to turn on Gaussian model smoothing (default = cubic\
    \ spline)]\n--gausssmoothparam <Gaussian smoothing std dev (default=3)>\n--jointinmodel\
    \ [flag to allow joint events in model updates (default=do not)]\n--fixedmodelrange\
    \ [flag to keep binding model range fixed to inital size (default: vary automatically)]\n\
    --prlogconf <Poisson log threshold for potential region scanning(default=-6)>\n\
    --alphascale <alpha scaling factor(default=1.0>\n--fixedalpha <impose this alpha\
    \ (default: set automatically)>\n--mlconfignotshared [flag to not share component\
    \ configs in the ML step]\n--exclude <file of regions to ignore>"
  type: File
  inputBinding:
    prefix: --d
- id: in_no_pos_prior
  doc: '[flag to turn off inter-experiment positional prior (default=on)]'
  type: boolean
  inputBinding:
    prefix: --noposprior
- id: in_prob_shared
  doc: <probability that events are shared across conditions (default=0.9)>
  type: boolean
  inputBinding:
    prefix: --probshared
- id: in_no_motifs
  doc: '[flag to turn off motif-finding & motif priors]'
  type: boolean
  inputBinding:
    prefix: --nomotifs
- id: in_no_motif_prior
  doc: '[flag to turn off motif priors only]'
  type: boolean
  inputBinding:
    prefix: --nomotifprior
- id: in_meme_path
  doc: '<path to the meme bin dir (default: meme is in $PATH)>'
  type: boolean
  inputBinding:
    prefix: --memepath
- id: in_me_men_motifs
  doc: <number of motifs MEME should find for each condition (default=3)>
  type: boolean
  inputBinding:
    prefix: --memenmotifs
- id: in_meme_min_w
  doc: <minw arg for MEME (default=6)>
  type: boolean
  inputBinding:
    prefix: --mememinw
- id: in_meme_max_w
  doc: <maxw arg for MEME (default=18)>
  type: boolean
  inputBinding:
    prefix: --mememaxw
- id: in_meme_args
  doc: <additional args for MEME (default=  -dna -mod zoops -revcomp -nostatus)>
  type: boolean
  inputBinding:
    prefix: --memeargs
- id: in_meme_one_proc
  doc: '[flag to enforce non-parallel version of MEME]'
  type: boolean
  inputBinding:
    prefix: --meme1proc
- id: in_qvalue_minimum_default
  doc: <Q-value minimum (default=0.001)>
  type: boolean
  inputBinding:
    prefix: --q
- id: in_min_fold
  doc: <minimum event fold-change vs scaled control (default=1.5)>
  type: boolean
  inputBinding:
    prefix: --minfold
- id: in_no_diff_tests
  doc: '[flag to turn off differential enrichment tests]'
  type: boolean
  inputBinding:
    prefix: --nodifftests
- id: in_rpath
  doc: '<path to the R bin dir (default: R is in $PATH). Note that you need to install
    edgeR separately>'
  type: boolean
  inputBinding:
    prefix: --rpath
- id: in_edge_rod
  doc: <EdgeR overdispersion parameter (default=0.15)>
  type: boolean
  inputBinding:
    prefix: --edgerod
- id: in_diff_p
  doc: <minimum p-value for reporting differential enrichment (default=0.01)>
  type: boolean
  inputBinding:
    prefix: --diffp
- id: in_events_are_txt
  doc: '[add .txt to events file extension]'
  type: boolean
  inputBinding:
    prefix: --eventsaretxt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "--threads <number of threads to use (default=1)>\n--verbose [flag to print\
    \ intermediate files and extra output]\n--config <config file: all options here\
    \ can be specified in a name<space>value text file, over-ridden by command-line\
    \ args>"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- multigps
