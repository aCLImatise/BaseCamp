version 1.0

task Chexmix {
  input {
    Boolean? threads
    Boolean? verbose
    Boolean? config
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
    File? exclude
    Boolean? galaxy_html
    Boolean? standard
    Boolean? lenient
    Boolean? lenient_plus
    Boolean? meme_path
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
      ~{true="--threads" false="" threads} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--config" false="" config} \
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
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{true="--galaxyhtml" false="" galaxy_html} \
      ~{true="--standard" false="" standard} \
      ~{true="--lenient" false="" lenient} \
      ~{true="--lenientplus" false="" lenient_plus} \
      ~{true="--memepath" false="" meme_path} \
      ~{true="--nomotifs" false="" no_motifs} \
      ~{true="--nomotifprior" false="" no_motif_prior} \
      ~{true="--memenmotifs" false="" me_men_motifs} \
      ~{true="--mememinw" false="" meme_min_w} \
      ~{true="--mememaxw" false="" meme_max_w} \
      ~{true="--memeargs" false="" meme_args} \
      ~{true="--minroc" false="" min_roc} \
      ~{true="--minmodelupdaterefs" false="" min_model_update_refs} \
      ~{true="--seqrmthres" false="" seqr_mth_res} \
      ~{true="--motifpccthres" false="" motif_pcc_th_res} \
      ~{true="--noclustering" false="" no_clustering} \
      ~{true="--pref" false="" pref} \
      ~{true="--numcomps" false="" num_comps} \
      ~{true="--win" false="" win} \
      ~{true="--kldivergencethres" false="" kl_divergence_th_res} \
      ~{true="--q" false="" qvalue_minimum_default} \
      ~{true="--minfold" false="" min_fold}
  >>>
  parameter_meta {
    threads: "<number of threads to use (default=1)>"
    verbose: "[flag to print intermediate files and extra output]"
    config: "<config file: all options here can be specified in a name<space>value text file, over-ridden by command-line args>"
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
}