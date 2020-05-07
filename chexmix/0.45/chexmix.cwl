class: CommandLineTool
id: chexmix.cwl
inputs:
- id: threads
  doc: <number of threads to use (default=1)>
  type: boolean
  inputBinding:
    prefix: --threads
- id: verbose
  doc: '[flag to print intermediate files and extra output]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: config
  doc: '<config file: all options here can be specified in a name<space>value text
    file, over-ridden by command-line args>'
  type: boolean
  inputBinding:
    prefix: --config
- id: non_unique
  doc: '[flag to use non-unique reads]'
  type: boolean
  inputBinding:
    prefix: --nonunique
- id: mapp_ability
  doc: <fraction of the genome that is mappable for these experiments (default=0.8)>
  type: boolean
  inputBinding:
    prefix: --mappability
- id: nocache
  doc: '[flag to turn off caching of the entire set of experiments (i.e. run slower
    with less memory)]'
  type: boolean
  inputBinding:
    prefix: --nocache
- id: no_scaling
  doc: '[flag to turn off auto estimation of signal vs control scaling factor]'
  type: boolean
  inputBinding:
    prefix: --noscaling
- id: median_scale
  doc: '[flag to use scaling by median ratio (default = scaling by NCIS)]'
  type: boolean
  inputBinding:
    prefix: --medianscale
- id: regression_scale
  doc: '[flag to use scaling by regression (default = scaling by NCIS)]'
  type: boolean
  inputBinding:
    prefix: --regressionscale
- id: ses_scale
  doc: '[flag to use scaling by SES (default = scaling by NCIS)]'
  type: boolean
  inputBinding:
    prefix: --sesscale
- id: fixed_scaling
  doc: '<multiply control counts by total tag count ratio and then by this factor
    (default: NCIS)>'
  type: boolean
  inputBinding:
    prefix: --fixedscaling
- id: scale_win
  doc: <window size for scaling procedure (default=10000)>
  type: boolean
  inputBinding:
    prefix: --scalewin
- id: plot_scaling
  doc: '[flag to plot diagnostic information for the chosen scaling method]'
  type: boolean
  inputBinding:
    prefix: --plotscaling
- id: exclude
  doc: OR --excludebed <file of regions to ignore in bed format>
  type: File
  inputBinding:
    prefix: --exclude
- id: galaxy_html
  doc: '[flag to produce a html output appropreate for galaxy]'
  type: boolean
  inputBinding:
    prefix: --galaxyhtml
- id: standard
  doc: '[report events that pass significance threshold in condition as a whole (default
    mode)]'
  type: boolean
  inputBinding:
    prefix: --standard
- id: lenient
  doc: '[report events that pass significance in >=1 replicate *or* the condition
    as a whole.]'
  type: boolean
  inputBinding:
    prefix: --lenient
- id: lenient_plus
  doc: '[report events that pass significance in condition OR (>=1 replicate AND no
    signif diff between replicates)]'
  type: boolean
  inputBinding:
    prefix: --lenientplus
- id: meme_path
  doc: '<path to the meme bin dir (default: meme is in $PATH)>'
  type: boolean
  inputBinding:
    prefix: --memepath
- id: no_motifs
  doc: '[flag to turn off motif-finding & motif priors]'
  type: boolean
  inputBinding:
    prefix: --nomotifs
- id: no_motif_prior
  doc: '[flag to turn off motif priors only]'
  type: boolean
  inputBinding:
    prefix: --nomotifprior
- id: me_men_motifs
  doc: <number of motifs MEME should find for each condition (default=3)>
  type: boolean
  inputBinding:
    prefix: --memenmotifs
- id: meme_min_w
  doc: <minw arg for MEME (default=6)>
  type: boolean
  inputBinding:
    prefix: --mememinw
- id: meme_max_w
  doc: <maxw arg for MEME (default=18)>
  type: boolean
  inputBinding:
    prefix: --mememaxw
- id: meme_args
  doc: <additional args for MEME (default=  -dna -mod zoops -revcomp -nostatus)>
  type: boolean
  inputBinding:
    prefix: --memeargs
- id: min_roc
  doc: <minimum motif ROC value (default=0.7)>
  type: boolean
  inputBinding:
    prefix: --minroc
- id: min_model_update_refs
  doc: <minimum number of motif reference to support an subtype distribution update
    (default=50)>
  type: boolean
  inputBinding:
    prefix: --minmodelupdaterefs
- id: seqr_mth_res
  doc: <Filter out sequences with motifs below this threshold for recursively finding
    motifs (default=0.1)>
  type: boolean
  inputBinding:
    prefix: --seqrmthres
- id: motif_pcc_th_res
  doc: <motif length adjusted similarity threshold for merging subtypes using motifs;
    decrease for fewer subtypes (default=0.95)>
  type: boolean
  inputBinding:
    prefix: --motifpccthres
- id: no_clustering
  doc: '[flag to turn off read distribution clustering]'
  type: boolean
  inputBinding:
    prefix: --noclustering
- id: pref
  doc: <preference value for read distribution clustering (default=-0.1)>
  type: boolean
  inputBinding:
    prefix: --pref
- id: num_comps
  doc: <number of components to cluster (default=500)>
  type: boolean
  inputBinding:
    prefix: --numcomps
- id: win
  doc: <window size of read profiles (default=150)>
  type: boolean
  inputBinding:
    prefix: --win
- id: kl_divergence_th_res
  doc: <KL divergence dissimilarity threshold for merging subtypes using read distributions;
    increase for fewer subtypes (default=-10)>
  type: boolean
  inputBinding:
    prefix: --kldivergencethres
- id: q
  doc: <Q-value minimum (default=0.01)>
  type: boolean
  inputBinding:
    prefix: --q
- id: min_fold
  doc: <minimum event fold-change vs scaled control (default=1.5)>
  type: boolean
  inputBinding:
    prefix: --minfold
outputs: []
cwlVersion: v1.1
baseCommand:
- chexmix
