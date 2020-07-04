version 1.0

task Multigps {
  input {
    Boolean? threads
    Boolean? verbose
    Boolean? config
    String? geninfo
    Boolean? non_unique
    Boolean? mapp_ability
    Boolean? nocache
    Boolean? no_scaling
    Boolean? median_scale
    Boolean? regression_scale
    Boolean? ses_scale
    Boolean? fixed_scaling
    Boolean? scale_win
    Boolean? plot_scaling
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
      ~{true="--threads" false="" threads} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--config" false="" config} \
      ~{if defined(geninfo) then ("--geninfo " +  '"' + geninfo + '"') else ""} \
      ~{true="--nonunique" false="" non_unique} \
      ~{true="--mappability" false="" mapp_ability} \
      ~{true="--nocache" false="" nocache} \
      ~{true="--noscaling" false="" no_scaling} \
      ~{true="--medianscale" false="" median_scale} \
      ~{true="--regressionscale" false="" regression_scale} \
      ~{true="--sesscale" false="" ses_scale} \
      ~{true="--fixedscaling" false="" fixed_scaling} \
      ~{true="--scalewin" false="" scale_win} \
      ~{true="--plotscaling" false="" plot_scaling} \
      ~{true="--noposprior" false="" no_pos_prior} \
      ~{true="--probshared" false="" prob_shared} \
      ~{true="--nomotifs" false="" no_motifs} \
      ~{true="--nomotifprior" false="" no_motif_prior} \
      ~{true="--memepath" false="" meme_path} \
      ~{true="--memenmotifs" false="" me_men_motifs} \
      ~{true="--mememinw" false="" meme_min_w} \
      ~{true="--mememaxw" false="" meme_max_w} \
      ~{true="--memeargs" false="" meme_args} \
      ~{true="--meme1proc" false="" meme_one_proc} \
      ~{true="--q" false="" qvalue_minimum_default} \
      ~{true="--minfold" false="" min_fold} \
      ~{true="--nodifftests" false="" no_diff_tests} \
      ~{true="--rpath" false="" rpath} \
      ~{true="--edgerod" false="" edge_rod} \
      ~{true="--diffp" false="" diff_p} \
      ~{true="--eventsaretxt" false="" events_are_txt}
  >>>
  parameter_meta {
    threads: "<number of threads to use (default=1)>"
    verbose: "[flag to print intermediate files and extra output]"
    config: "<config file: all options here can be specified in a name<space>value text file, over-ridden by command-line args>"
    geninfo: "AND --seq <fasta seq directory reqd if using motif prior>"
    non_unique: "[flag to use non-unique reads]"
    mapp_ability: "<fraction of the genome that is mappable for these experiments (default=0.8)>"
    nocache: "[flag to turn off caching of the entire set of experiments (i.e. run slower with less memory)]"
    no_scaling: "[flag to turn off auto estimation of signal vs control scaling factor]"
    median_scale: "[flag to use scaling by median ratio (default = scaling by NCIS)]"
    regression_scale: "[flag to use scaling by regression (default = scaling by NCIS)]"
    ses_scale: "[flag to use scaling by SES (default = scaling by NCIS)]"
    fixed_scaling: "<multiply control counts by total tag count ratio and then by this factor (default: NCIS)>"
    scale_win: "<window size for scaling procedure (default=10000)>"
    plot_scaling: "[flag to plot diagnostic information for the chosen scaling method]"
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
}