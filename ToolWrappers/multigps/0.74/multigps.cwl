class: CommandLineTool
id: multigps.cwl
inputs:
- id: in_threads
  doc: <number of threads to use (default=1)>
  type: File?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: '[flag to print intermediate files and extra output]'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_config
  doc: '<config file: all options here can be specified in a name<space>value text
    file, over-ridden by command-line args>'
  type: boolean?
  inputBinding:
    prefix: --config
- id: in_geninfo
  doc: AND --seq <fasta seq directory reqd if using motif prior>
  type: File?
  inputBinding:
    prefix: --geninfo
- id: in_expt
  doc: AND --format <SAM/BED/SCIDX>
  type: File?
  inputBinding:
    prefix: --expt
- id: in_ctrl
  doc: <file name (optional argument. must be same format as expt files)>
  type: boolean?
  inputBinding:
    prefix: --ctrl
- id: in_design
  doc: <experiment design file name to use instead of --expt and --ctrl; see website
    for format>
  type: boolean?
  inputBinding:
    prefix: --design
- id: in_fixed_pb
  doc: '<fixed per base limit (default: estimated from background model)>'
  type: boolean?
  inputBinding:
    prefix: --fixedpb
- id: in_poisson_gauss_pb
  doc: '[flag to use non-unique reads]'
  type: string?
  inputBinding:
    prefix: --poissongausspb
- id: in_mapp_ability
  doc: <fraction of the genome that is mappable for these experiments (default=0.8)>
  type: boolean?
  inputBinding:
    prefix: --mappability
- id: in_nocache
  doc: '[flag to turn off caching of the entire set of experiments (i.e. run slower
    with less memory)]'
  type: boolean?
  inputBinding:
    prefix: --nocache
- id: in_no_scaling
  doc: '[flag to turn off auto estimation of signal vs control scaling factor]'
  type: boolean?
  inputBinding:
    prefix: --noscaling
- id: in_median_scale
  doc: '[flag to use scaling by median ratio (default = scaling by NCIS)]'
  type: boolean?
  inputBinding:
    prefix: --medianscale
- id: in_regression_scale
  doc: '[flag to use scaling by regression (default = scaling by NCIS)]'
  type: boolean?
  inputBinding:
    prefix: --regressionscale
- id: in_ses_scale
  doc: '[flag to use scaling by SES (default = scaling by NCIS)]'
  type: boolean?
  inputBinding:
    prefix: --sesscale
- id: in_fixed_scaling
  doc: '<multiply control counts by total tag count ratio and then by this factor
    (default: NCIS)>'
  type: boolean?
  inputBinding:
    prefix: --fixedscaling
- id: in_scale_win
  doc: <window size for scaling procedure (default=10000)>
  type: boolean?
  inputBinding:
    prefix: --scalewin
- id: in_plot_scaling
  doc: '[flag to plot diagnostic information for the chosen scaling method]'
  type: boolean?
  inputBinding:
    prefix: --plotscaling
- id: in_max_model_update
  doc: <max. model update rounds, default=3>
  type: File?
  inputBinding:
    prefix: --d
- id: in_no_model_update
  doc: '[flag to turn off binding model updates]'
  type: boolean?
  inputBinding:
    prefix: --nomodelupdate
- id: in_min_model_update_events
  doc: <minimum number of events to support an update (default=500)>
  type: boolean?
  inputBinding:
    prefix: --minmodelupdateevents
- id: in_no_model_smoothing
  doc: '[flag to turn off binding model smoothing]'
  type: boolean?
  inputBinding:
    prefix: --nomodelsmoothing
- id: in_spline_smooth_param
  doc: <spline smoothing parameter (default=30)>
  type: boolean?
  inputBinding:
    prefix: --splinesmoothparam
- id: in_gauss_model_smoothing
  doc: '[flag to turn on Gaussian model smoothing (default = cubic spline)]'
  type: boolean?
  inputBinding:
    prefix: --gaussmodelsmoothing
- id: in_gauss_smooth_param
  doc: <Gaussian smoothing std dev (default=3)>
  type: boolean?
  inputBinding:
    prefix: --gausssmoothparam
- id: in_joint_in_model
  doc: '[flag to allow joint events in model updates (default=do not)]'
  type: boolean?
  inputBinding:
    prefix: --jointinmodel
- id: in_fixed_model_range
  doc: '[flag to keep binding model range fixed to inital size (default: vary automatically)]'
  type: boolean?
  inputBinding:
    prefix: --fixedmodelrange
- id: in_pr_log_conf
  doc: <Poisson log threshold for potential region scanning(default=-6)>
  type: boolean?
  inputBinding:
    prefix: --prlogconf
- id: in_alpha_scale
  doc: <alpha scaling factor(default=1.0>
  type: boolean?
  inputBinding:
    prefix: --alphascale
- id: in_fixed_alpha
  doc: '<impose this alpha (default: set automatically)>'
  type: boolean?
  inputBinding:
    prefix: --fixedalpha
- id: in_ml_config_not_shared
  doc: '[flag to not share component configs in the ML step]'
  type: boolean?
  inputBinding:
    prefix: --mlconfignotshared
- id: in_no_pos_prior
  doc: '[flag to turn off inter-experiment positional prior (default=on)]'
  type: boolean?
  inputBinding:
    prefix: --noposprior
- id: in_prob_shared
  doc: <probability that events are shared across conditions (default=0.9)>
  type: boolean?
  inputBinding:
    prefix: --probshared
- id: in_no_motifs
  doc: '[flag to turn off motif-finding & motif priors]'
  type: boolean?
  inputBinding:
    prefix: --nomotifs
- id: in_no_motif_prior
  doc: '[flag to turn off motif priors only]'
  type: boolean?
  inputBinding:
    prefix: --nomotifprior
- id: in_meme_path
  doc: '<path to the meme bin dir (default: meme is in $PATH)>'
  type: boolean?
  inputBinding:
    prefix: --memepath
- id: in_me_men_motifs
  doc: <number of motifs MEME should find for each condition (default=3)>
  type: boolean?
  inputBinding:
    prefix: --memenmotifs
- id: in_meme_min_w
  doc: <minw arg for MEME (default=6)>
  type: boolean?
  inputBinding:
    prefix: --mememinw
- id: in_meme_max_w
  doc: <maxw arg for MEME (default=18)>
  type: boolean?
  inputBinding:
    prefix: --mememaxw
- id: in_meme_args
  doc: <additional args for MEME (default=  -dna -mod zoops -revcomp -nostatus)>
  type: boolean?
  inputBinding:
    prefix: --memeargs
- id: in_meme_one_proc
  doc: '[flag to enforce non-parallel version of MEME]'
  type: boolean?
  inputBinding:
    prefix: --meme1proc
- id: in_qvalue_minimum_default
  doc: <Q-value minimum (default=0.001)>
  type: boolean?
  inputBinding:
    prefix: --q
- id: in_min_fold
  doc: <minimum event fold-change vs scaled control (default=1.5)>
  type: boolean?
  inputBinding:
    prefix: --minfold
- id: in_no_diff_tests
  doc: '[flag to turn off differential enrichment tests]'
  type: boolean?
  inputBinding:
    prefix: --nodifftests
- id: in_rpath
  doc: '<path to the R bin dir (default: R is in $PATH). Note that you need to install
    edgeR separately>'
  type: boolean?
  inputBinding:
    prefix: --rpath
- id: in_edge_rod
  doc: <EdgeR overdispersion parameter (default=0.15)>
  type: boolean?
  inputBinding:
    prefix: --edgerod
- id: in_diff_p
  doc: <minimum p-value for reporting differential enrichment (default=0.01)>
  type: boolean?
  inputBinding:
    prefix: --diffp
- id: in_events_are_txt
  doc: '[add .txt to events file extension]'
  type: boolean?
  inputBinding:
    prefix: --eventsaretxt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_threads
  doc: <number of threads to use (default=1)>
  type: File?
  outputBinding:
    glob: $(inputs.in_threads)
hints: []
cwlVersion: v1.1
baseCommand:
- multigps
