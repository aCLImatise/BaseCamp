version 1.0

task Chexmix {
  input {
    File? out
    File? geninfo
    File? expt
    Boolean? no_scaling
    Boolean? median_scale
    Boolean? regression_scale
    Boolean? ses_scale
    Boolean? fixed_scaling
    Boolean? scale_win
    Boolean? plot_scaling
    Boolean? round
    Boolean? standard
    Boolean? lenient
    Boolean? lenient_plus
    File? mot_file
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
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(geninfo) then ("--geninfo " +  '"' + geninfo + '"') else ""} \
      ~{if defined(expt) then ("--expt " +  '"' + expt + '"') else ""} \
      ~{if (no_scaling) then "--noscaling" else ""} \
      ~{if (median_scale) then "--medianscale" else ""} \
      ~{if (regression_scale) then "--regressionscale" else ""} \
      ~{if (ses_scale) then "--sesscale" else ""} \
      ~{if (fixed_scaling) then "--fixedscaling" else ""} \
      ~{if (scale_win) then "--scalewin" else ""} \
      ~{if (plot_scaling) then "--plotscaling" else ""} \
      ~{if (round) then "--round" else ""} \
      ~{if (standard) then "--standard" else ""} \
      ~{if (lenient) then "--lenient" else ""} \
      ~{if (lenient_plus) then "--lenientplus" else ""} \
      ~{if defined(mot_file) then ("--motfile " +  '"' + mot_file + '"') else ""} \
      ~{if (no_clustering) then "--noclustering" else ""} \
      ~{if (pref) then "--pref" else ""} \
      ~{if (num_comps) then "--numcomps" else ""} \
      ~{if (win) then "--win" else ""} \
      ~{if (kl_divergence_th_res) then "--kldivergencethres" else ""} \
      ~{if (qvalue_minimum_default) then "--q" else ""} \
      ~{if (min_fold) then "--minfold" else ""}
  >>>
  parameter_meta {
    out: "--threads <number of threads to use (default=1)>\\n--verbose [flag to print intermediate files and extra output]\\n--config <config file: all options here can be specified in a name<space>value text file, over-ridden by command-line args>"
    geninfo: "AND --seq <fasta seq directory reqd if finding motif>\\n--back <Markov background model file reqd if finding motif>"
    expt: "AND --format <SAM/BED/IDX>\\n--ctrl <file name (optional argument. must be same format as expt files)>\\n--design <experiment design file name to use instead of --expt and --ctrl; see website for format>\\n--fixedpb <fixed per base limit (default: estimated from background model)>\\n--poissongausspb <filter per base using a Poisson threshold parameterized by a local Gaussian sliding window>\\n--nonunique [flag to use non-unique reads]\\n--mappability <fraction of the genome that is mappable for these experiments (default=0.8)>\\n--nocache [flag to turn off caching of the entire set of experiments (i.e. run slower with less memory)]"
    no_scaling: "[flag to turn off auto estimation of signal vs control scaling factor]"
    median_scale: "[flag to use scaling by median ratio (default = scaling by NCIS)]"
    regression_scale: "[flag to use scaling by regression (default = scaling by NCIS)]"
    ses_scale: "[flag to use scaling by SES (default = scaling by NCIS)]"
    fixed_scaling: "<multiply control counts by total tag count ratio and then by this factor (default: NCIS)>"
    scale_win: "<window size for scaling procedure (default=10000)>"
    plot_scaling: "[flag to plot diagnostic information for the chosen scaling method]"
    round: "<max. model update rounds (default=3)>\\n--bmwindowmax <max. window size for running a mixture model over binding events (default=2000)>\\n--nomodelupdate [flag to turn off binding model updates]\\n--minmodelupdateevents <minimum number of events to support an update using read distributions (default=100)>\\n--prlogconf <Poisson log threshold for potential region scanning (default=-6)>\\n--fixedalpha <binding events must have at least this number of reads (default: set automatically)>\\n--alphascale <alpha scaling factor; increase for stricter event calls (default=1.0)>\\n--betascale <beta scaling factor; prior on subtype assignment (default=0.05)>\\n--epsilonscale <epsilon scaling factor; increase for more weight on motif in subtype assignment (default=0.2)>\\n--minsubtypefrac <subtypes must have at least this percentage of associated binding events; increase for fewer subtypes (default=0.05)>\\n--peakf <file of peaks to initialize component positions>\\n--exclude <file of regions to ignore> OR --excludebed <file of regions to ignore in bed format>\\n--galaxyhtml [flag to produce a html output appropreate for galaxy]"
    standard: "[report events that pass significance threshold in condition as a whole (default mode)]"
    lenient: "[report events that pass significance in >=1 replicate *or* the condition as a whole.]"
    lenient_plus: "[report events that pass significance in condition OR (>=1 replicate AND no signif diff between replicates)]"
    mot_file: "--memepath <path to the meme bin dir (default: meme is in $PATH)>\\n--nomotifs [flag to turn off motif-finding & motif priors]\\n--nomotifprior [flag to turn off motif priors only]\\n--memenmotifs <number of motifs MEME should find for each condition (default=3)>\\n--mememinw <minw arg for MEME (default=6)>\\n--mememaxw <maxw arg for MEME (default=18)>\\n--memeargs <additional args for MEME (default=  -dna -mod zoops -revcomp -nostatus)>\\n--minroc <minimum motif ROC value (default=0.7)>\\n--minmodelupdaterefs <minimum number of motif reference to support an subtype distribution update (default=50)>\\n--seqrmthres <Filter out sequences with motifs below this threshold for recursively finding motifs (default=0.1)>\\n--motifpccthres <motif length adjusted similarity threshold for merging subtypes using motifs; decrease for fewer subtypes (default=0.95)>"
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
    File out_out = "${in_out}"
  }
}