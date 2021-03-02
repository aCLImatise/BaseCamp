version 1.0

task Chexmix {
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
    Boolean? round
    Boolean? bm_window_max
    Boolean? no_model_update
    Boolean? min_model_update_events
    Boolean? pr_log_conf
    Boolean? fixed_alpha
    Boolean? alpha_scale
    Boolean? beta_scale
    Boolean? epsilon_scale
    Boolean? min_subtype_frac
    File? exclude
    Boolean? galaxy_html
    Boolean? standard
    Boolean? lenient
    Boolean? lenient_plus
    File? meme_path
    Boolean? no_motifs
    Boolean? no_motif_prior
    Boolean? me_men_motifs
    Boolean? meme_min_w
    Boolean? meme_max_w
    Boolean? meme_args
    Boolean? min_roc
    Boolean? min_model_update_refs
    Boolean? seqr_mth_res
    Boolean? motif_pcc_th_res
    Boolean? no_clustering
    Boolean? pref
    Boolean? num_comps
    Boolean? win
    Boolean? kl_divergence_th_res
    Boolean? qvalue_minimum_default
    Boolean? min_fold
  }
  command <<<
    chexmix \
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
      ~{if (round) then "--round" else ""} \
      ~{if (bm_window_max) then "--bmwindowmax" else ""} \
      ~{if (no_model_update) then "--nomodelupdate" else ""} \
      ~{if (min_model_update_events) then "--minmodelupdateevents" else ""} \
      ~{if (pr_log_conf) then "--prlogconf" else ""} \
      ~{if (fixed_alpha) then "--fixedalpha" else ""} \
      ~{if (alpha_scale) then "--alphascale" else ""} \
      ~{if (beta_scale) then "--betascale" else ""} \
      ~{if (epsilon_scale) then "--epsilonscale" else ""} \
      ~{if (min_subtype_frac) then "--minsubtypefrac" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (galaxy_html) then "--galaxyhtml" else ""} \
      ~{if (standard) then "--standard" else ""} \
      ~{if (lenient) then "--lenient" else ""} \
      ~{if (lenient_plus) then "--lenientplus" else ""} \
      ~{if defined(meme_path) then ("--memepath " +  '"' + meme_path + '"') else ""} \
      ~{if (no_motifs) then "--nomotifs" else ""} \
      ~{if (no_motif_prior) then "--nomotifprior" else ""} \
      ~{if (me_men_motifs) then "--memenmotifs" else ""} \
      ~{if (meme_min_w) then "--mememinw" else ""} \
      ~{if (meme_max_w) then "--mememaxw" else ""} \
      ~{if (meme_args) then "--memeargs" else ""} \
      ~{if (min_roc) then "--minroc" else ""} \
      ~{if (min_model_update_refs) then "--minmodelupdaterefs" else ""} \
      ~{if (seqr_mth_res) then "--seqrmthres" else ""} \
      ~{if (motif_pcc_th_res) then "--motifpccthres" else ""} \
      ~{if (no_clustering) then "--noclustering" else ""} \
      ~{if (pref) then "--pref" else ""} \
      ~{if (num_comps) then "--numcomps" else ""} \
      ~{if (win) then "--win" else ""} \
      ~{if (kl_divergence_th_res) then "--kldivergencethres" else ""} \
      ~{if (qvalue_minimum_default) then "--q" else ""} \
      ~{if (min_fold) then "--minfold" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "<number of threads to use (default=1)>"
    verbose: "[flag to print intermediate files and extra output]"
    config: "<config file: all options here can be specified in a name<space>value text file, over-ridden by command-line args>"
    geninfo: "AND --seq <fasta seq directory reqd if finding motif>"
    expt: "AND --format <SAM/BED/IDX>"
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
    round: "<max. model update rounds (default=3)>"
    bm_window_max: "<max. window size for running a mixture model over binding events (default=2000)>"
    no_model_update: "[flag to turn off binding model updates]"
    min_model_update_events: "<minimum number of events to support an update using read distributions (default=100)>"
    pr_log_conf: "<Poisson log threshold for potential region scanning (default=-6)>"
    fixed_alpha: "<binding events must have at least this number of reads (default: set automatically)>"
    alpha_scale: "<alpha scaling factor; increase for stricter event calls (default=1.0)>"
    beta_scale: "<beta scaling factor; prior on subtype assignment (default=0.05)>"
    epsilon_scale: "<epsilon scaling factor; increase for more weight on motif in subtype assignment (default=0.2)>"
    min_subtype_frac: "<subtypes must have at least this percentage of associated binding events; increase for fewer subtypes (default=0.05)>"
    exclude: "OR --excludebed <file of regions to ignore in bed format>"
    galaxy_html: "[flag to produce a html output appropreate for galaxy]"
    standard: "[report events that pass significance threshold in condition as a whole (default mode)]"
    lenient: "[report events that pass significance in >=1 replicate *or* the condition as a whole.]"
    lenient_plus: "[report events that pass significance in condition OR (>=1 replicate AND no signif diff between replicates)]"
    meme_path: "<path to the meme bin dir (default: meme is in $PATH)>"
    no_motifs: "[flag to turn off motif-finding & motif priors]"
    no_motif_prior: "[flag to turn off motif priors only]"
    me_men_motifs: "<number of motifs MEME should find for each condition (default=3)>"
    meme_min_w: "<minw arg for MEME (default=6)>"
    meme_max_w: "<maxw arg for MEME (default=18)>"
    meme_args: "<additional args for MEME (default=  -dna -mod zoops -revcomp -nostatus)>"
    min_roc: "<minimum motif ROC value (default=0.7)>"
    min_model_update_refs: "<minimum number of motif reference to support an subtype distribution update (default=50)>"
    seqr_mth_res: "<Filter out sequences with motifs below this threshold for recursively finding motifs (default=0.1)>"
    motif_pcc_th_res: "<motif length adjusted similarity threshold for merging subtypes using motifs; decrease for fewer subtypes (default=0.95)>"
    no_clustering: "[flag to turn off read distribution clustering]"
    pref: "<preference value for read distribution clustering (default=-0.1)>"
    num_comps: "<number of components to cluster (default=500)>"
    win: "<window size of read profiles (default=150)>"
    kl_divergence_th_res: "<KL divergence dissimilarity threshold for merging subtypes using read distributions; increase for fewer subtypes (default=-10)>"
    qvalue_minimum_default: "<Q-value minimum (default=0.01)>"
    min_fold: "<minimum event fold-change vs scaled control (default=1.5)>"
  }
  output {
    File out_stdout = stdout()
    File out_threads = "${in_threads}"
  }
}