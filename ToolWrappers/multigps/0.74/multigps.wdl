version 1.0

task Multigps {
  input {
    File? threads
    Boolean? verbose
    Boolean? config
    File? geninfo
    File? expt
    Boolean? ctrl
    Boolean? design
    Boolean? fixed_pb
    String? poisson_gauss_pb
    Boolean? mapp_ability
    Boolean? nocache
    Boolean? no_scaling
    Boolean? median_scale
    Boolean? regression_scale
    Boolean? ses_scale
    Boolean? fixed_scaling
    Boolean? scale_win
    Boolean? plot_scaling
    File? max_model_update
    Boolean? no_model_update
    Boolean? min_model_update_events
    Boolean? no_model_smoothing
    Boolean? spline_smooth_param
    Boolean? gauss_model_smoothing
    Boolean? gauss_smooth_param
    Boolean? joint_in_model
    Boolean? fixed_model_range
    Boolean? pr_log_conf
    Boolean? alpha_scale
    Boolean? fixed_alpha
    Boolean? ml_config_not_shared
    Boolean? no_pos_prior
    Boolean? prob_shared
    Boolean? no_motifs
    Boolean? no_motif_prior
    Boolean? meme_path
    Boolean? me_men_motifs
    Boolean? meme_min_w
    Boolean? meme_max_w
    Boolean? meme_args
    Boolean? meme_one_proc
    Boolean? qvalue_minimum_default
    Boolean? min_fold
    Boolean? no_diff_tests
    Boolean? rpath
    Boolean? edge_rod
    Boolean? diff_p
    Boolean? events_are_txt
  }
  command <<<
    multigps \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if defined(geninfo) then ("--geninfo " +  '"' + geninfo + '"') else ""} \
      ~{if defined(expt) then ("--expt " +  '"' + expt + '"') else ""} \
      ~{if (ctrl) then "--ctrl" else ""} \
      ~{if (design) then "--design" else ""} \
      ~{if (fixed_pb) then "--fixedpb" else ""} \
      ~{if defined(poisson_gauss_pb) then ("--poissongausspb " +  '"' + poisson_gauss_pb + '"') else ""} \
      ~{if (mapp_ability) then "--mappability" else ""} \
      ~{if (nocache) then "--nocache" else ""} \
      ~{if (no_scaling) then "--noscaling" else ""} \
      ~{if (median_scale) then "--medianscale" else ""} \
      ~{if (regression_scale) then "--regressionscale" else ""} \
      ~{if (ses_scale) then "--sesscale" else ""} \
      ~{if (fixed_scaling) then "--fixedscaling" else ""} \
      ~{if (scale_win) then "--scalewin" else ""} \
      ~{if (plot_scaling) then "--plotscaling" else ""} \
      ~{if defined(max_model_update) then ("--d " +  '"' + max_model_update + '"') else ""} \
      ~{if (no_model_update) then "--nomodelupdate" else ""} \
      ~{if (min_model_update_events) then "--minmodelupdateevents" else ""} \
      ~{if (no_model_smoothing) then "--nomodelsmoothing" else ""} \
      ~{if (spline_smooth_param) then "--splinesmoothparam" else ""} \
      ~{if (gauss_model_smoothing) then "--gaussmodelsmoothing" else ""} \
      ~{if (gauss_smooth_param) then "--gausssmoothparam" else ""} \
      ~{if (joint_in_model) then "--jointinmodel" else ""} \
      ~{if (fixed_model_range) then "--fixedmodelrange" else ""} \
      ~{if (pr_log_conf) then "--prlogconf" else ""} \
      ~{if (alpha_scale) then "--alphascale" else ""} \
      ~{if (fixed_alpha) then "--fixedalpha" else ""} \
      ~{if (ml_config_not_shared) then "--mlconfignotshared" else ""} \
      ~{if (no_pos_prior) then "--noposprior" else ""} \
      ~{if (prob_shared) then "--probshared" else ""} \
      ~{if (no_motifs) then "--nomotifs" else ""} \
      ~{if (no_motif_prior) then "--nomotifprior" else ""} \
      ~{if (meme_path) then "--memepath" else ""} \
      ~{if (me_men_motifs) then "--memenmotifs" else ""} \
      ~{if (meme_min_w) then "--mememinw" else ""} \
      ~{if (meme_max_w) then "--mememaxw" else ""} \
      ~{if (meme_args) then "--memeargs" else ""} \
      ~{if (meme_one_proc) then "--meme1proc" else ""} \
      ~{if (qvalue_minimum_default) then "--q" else ""} \
      ~{if (min_fold) then "--minfold" else ""} \
      ~{if (no_diff_tests) then "--nodifftests" else ""} \
      ~{if (rpath) then "--rpath" else ""} \
      ~{if (edge_rod) then "--edgerod" else ""} \
      ~{if (diff_p) then "--diffp" else ""} \
      ~{if (events_are_txt) then "--eventsaretxt" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "<number of threads to use (default=1)>"
    verbose: "[flag to print intermediate files and extra output]"
    config: "<config file: all options here can be specified in a name<space>value text file, over-ridden by command-line args>"
    geninfo: "AND --seq <fasta seq directory reqd if using motif prior>"
    expt: "AND --format <SAM/BED/SCIDX>"
    ctrl: "<file name (optional argument. must be same format as expt files)>"
    design: "<experiment design file name to use instead of --expt and --ctrl; see website for format>"
    fixed_pb: "<fixed per base limit (default: estimated from background model)>"
    poisson_gauss_pb: "[flag to use non-unique reads]"
    mapp_ability: "<fraction of the genome that is mappable for these experiments (default=0.8)>"
    nocache: "[flag to turn off caching of the entire set of experiments (i.e. run slower with less memory)]"
    no_scaling: "[flag to turn off auto estimation of signal vs control scaling factor]"
    median_scale: "[flag to use scaling by median ratio (default = scaling by NCIS)]"
    regression_scale: "[flag to use scaling by regression (default = scaling by NCIS)]"
    ses_scale: "[flag to use scaling by SES (default = scaling by NCIS)]"
    fixed_scaling: "<multiply control counts by total tag count ratio and then by this factor (default: NCIS)>"
    scale_win: "<window size for scaling procedure (default=10000)>"
    plot_scaling: "[flag to plot diagnostic information for the chosen scaling method]"
    max_model_update: "<max. model update rounds, default=3>"
    no_model_update: "[flag to turn off binding model updates]"
    min_model_update_events: "<minimum number of events to support an update (default=500)>"
    no_model_smoothing: "[flag to turn off binding model smoothing]"
    spline_smooth_param: "<spline smoothing parameter (default=30)>"
    gauss_model_smoothing: "[flag to turn on Gaussian model smoothing (default = cubic spline)]"
    gauss_smooth_param: "<Gaussian smoothing std dev (default=3)>"
    joint_in_model: "[flag to allow joint events in model updates (default=do not)]"
    fixed_model_range: "[flag to keep binding model range fixed to inital size (default: vary automatically)]"
    pr_log_conf: "<Poisson log threshold for potential region scanning(default=-6)>"
    alpha_scale: "<alpha scaling factor(default=1.0>"
    fixed_alpha: "<impose this alpha (default: set automatically)>"
    ml_config_not_shared: "[flag to not share component configs in the ML step]"
    no_pos_prior: "[flag to turn off inter-experiment positional prior (default=on)]"
    prob_shared: "<probability that events are shared across conditions (default=0.9)>"
    no_motifs: "[flag to turn off motif-finding & motif priors]"
    no_motif_prior: "[flag to turn off motif priors only]"
    meme_path: "<path to the meme bin dir (default: meme is in $PATH)>"
    me_men_motifs: "<number of motifs MEME should find for each condition (default=3)>"
    meme_min_w: "<minw arg for MEME (default=6)>"
    meme_max_w: "<maxw arg for MEME (default=18)>"
    meme_args: "<additional args for MEME (default=  -dna -mod zoops -revcomp -nostatus)>"
    meme_one_proc: "[flag to enforce non-parallel version of MEME]"
    qvalue_minimum_default: "<Q-value minimum (default=0.001)>"
    min_fold: "<minimum event fold-change vs scaled control (default=1.5)>"
    no_diff_tests: "[flag to turn off differential enrichment tests]"
    rpath: "<path to the R bin dir (default: R is in $PATH). Note that you need to install edgeR separately>"
    edge_rod: "<EdgeR overdispersion parameter (default=0.15)>"
    diff_p: "<minimum p-value for reporting differential enrichment (default=0.01)>"
    events_are_txt: "[add .txt to events file extension]"
  }
  output {
    File out_stdout = stdout()
    File out_threads = "${in_threads}"
  }
}