class: CommandLineTool
id: chexmix.cwl
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
  doc: AND --seq <fasta seq directory reqd if finding motif>
  type: File?
  inputBinding:
    prefix: --geninfo
- id: in_expt
  doc: AND --format <SAM/BED/IDX>
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
- id: in_round
  doc: <max. model update rounds (default=3)>
  type: boolean?
  inputBinding:
    prefix: --round
- id: in_bm_window_max
  doc: <max. window size for running a mixture model over binding events (default=2000)>
  type: boolean?
  inputBinding:
    prefix: --bmwindowmax
- id: in_no_model_update
  doc: '[flag to turn off binding model updates]'
  type: boolean?
  inputBinding:
    prefix: --nomodelupdate
- id: in_min_model_update_events
  doc: <minimum number of events to support an update using read distributions (default=100)>
  type: boolean?
  inputBinding:
    prefix: --minmodelupdateevents
- id: in_pr_log_conf
  doc: <Poisson log threshold for potential region scanning (default=-6)>
  type: boolean?
  inputBinding:
    prefix: --prlogconf
- id: in_fixed_alpha
  doc: '<binding events must have at least this number of reads (default: set automatically)>'
  type: boolean?
  inputBinding:
    prefix: --fixedalpha
- id: in_alpha_scale
  doc: <alpha scaling factor; increase for stricter event calls (default=1.0)>
  type: boolean?
  inputBinding:
    prefix: --alphascale
- id: in_beta_scale
  doc: <beta scaling factor; prior on subtype assignment (default=0.05)>
  type: boolean?
  inputBinding:
    prefix: --betascale
- id: in_epsilon_scale
  doc: <epsilon scaling factor; increase for more weight on motif in subtype assignment
    (default=0.2)>
  type: boolean?
  inputBinding:
    prefix: --epsilonscale
- id: in_min_subtype_frac
  doc: <subtypes must have at least this percentage of associated binding events;
    increase for fewer subtypes (default=0.05)>
  type: boolean?
  inputBinding:
    prefix: --minsubtypefrac
- id: in_exclude
  doc: OR --excludebed <file of regions to ignore in bed format>
  type: File?
  inputBinding:
    prefix: --exclude
- id: in_galaxy_html
  doc: '[flag to produce a html output appropreate for galaxy]'
  type: boolean?
  inputBinding:
    prefix: --galaxyhtml
- id: in_standard
  doc: '[report events that pass significance threshold in condition as a whole (default
    mode)]'
  type: boolean?
  inputBinding:
    prefix: --standard
- id: in_lenient
  doc: '[report events that pass significance in >=1 replicate *or* the condition
    as a whole.]'
  type: boolean?
  inputBinding:
    prefix: --lenient
- id: in_lenient_plus
  doc: '[report events that pass significance in condition OR (>=1 replicate AND no
    signif diff between replicates)]'
  type: boolean?
  inputBinding:
    prefix: --lenientplus
- id: in_meme_path
  doc: '<path to the meme bin dir (default: meme is in $PATH)>'
  type: File?
  inputBinding:
    prefix: --memepath
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
- id: in_min_roc
  doc: <minimum motif ROC value (default=0.7)>
  type: boolean?
  inputBinding:
    prefix: --minroc
- id: in_min_model_update_refs
  doc: <minimum number of motif reference to support an subtype distribution update
    (default=50)>
  type: boolean?
  inputBinding:
    prefix: --minmodelupdaterefs
- id: in_seqr_mth_res
  doc: <Filter out sequences with motifs below this threshold for recursively finding
    motifs (default=0.1)>
  type: boolean?
  inputBinding:
    prefix: --seqrmthres
- id: in_motif_pcc_th_res
  doc: <motif length adjusted similarity threshold for merging subtypes using motifs;
    decrease for fewer subtypes (default=0.95)>
  type: boolean?
  inputBinding:
    prefix: --motifpccthres
- id: in_no_clustering
  doc: '[flag to turn off read distribution clustering]'
  type: boolean?
  inputBinding:
    prefix: --noclustering
- id: in_pref
  doc: <preference value for read distribution clustering (default=-0.1)>
  type: boolean?
  inputBinding:
    prefix: --pref
- id: in_num_comps
  doc: <number of components to cluster (default=500)>
  type: boolean?
  inputBinding:
    prefix: --numcomps
- id: in_win
  doc: <window size of read profiles (default=150)>
  type: boolean?
  inputBinding:
    prefix: --win
- id: in_kl_divergence_th_res
  doc: <KL divergence dissimilarity threshold for merging subtypes using read distributions;
    increase for fewer subtypes (default=-10)>
  type: boolean?
  inputBinding:
    prefix: --kldivergencethres
- id: in_qvalue_minimum_default
  doc: <Q-value minimum (default=0.01)>
  type: boolean?
  inputBinding:
    prefix: --q
- id: in_min_fold
  doc: <minimum event fold-change vs scaled control (default=1.5)>
  type: boolean?
  inputBinding:
    prefix: --minfold
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
- chexmix
