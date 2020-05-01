#!/usr/bin/env cwl-runner

baseCommand:
- chexmix
class: CommandLineTool
cwlVersion: v1.0
id: chexmix
inputs:
- doc: <number of threads to use (default=1)>
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
- doc: '[flag to print intermediate files and extra output]'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: '<config file: all options here can be specified in a name<space>value text
    file, over-ridden by command-line args>'
  id: config
  inputBinding:
    prefix: --config
  type: boolean
- doc: '[flag to use non-unique reads]'
  id: non_unique
  inputBinding:
    prefix: --nonunique
  type: boolean
- doc: <fraction of the genome that is mappable for these experiments (default=0.8)>
  id: mapp_ability
  inputBinding:
    prefix: --mappability
  type: boolean
- doc: '[flag to turn off caching of the entire set of experiments (i.e. run slower
    with less memory)]'
  id: nocache
  inputBinding:
    prefix: --nocache
  type: boolean
- doc: '[flag to turn off auto estimation of signal vs control scaling factor]'
  id: no_scaling
  inputBinding:
    prefix: --noscaling
  type: boolean
- doc: '[flag to use scaling by median ratio (default = scaling by NCIS)]'
  id: median_scale
  inputBinding:
    prefix: --medianscale
  type: boolean
- doc: '[flag to use scaling by regression (default = scaling by NCIS)]'
  id: regression_scale
  inputBinding:
    prefix: --regressionscale
  type: boolean
- doc: '[flag to use scaling by SES (default = scaling by NCIS)]'
  id: ses_scale
  inputBinding:
    prefix: --sesscale
  type: boolean
- doc: '<multiply control counts by total tag count ratio and then by this factor
    (default: NCIS)>'
  id: fixed_scaling
  inputBinding:
    prefix: --fixedscaling
  type: boolean
- doc: <window size for scaling procedure (default=10000)>
  id: scale_win
  inputBinding:
    prefix: --scalewin
  type: boolean
- doc: '[flag to plot diagnostic information for the chosen scaling method]'
  id: plot_scaling
  inputBinding:
    prefix: --plotscaling
  type: boolean
- doc: OR --excludebed <file of regions to ignore in bed format>
  id: exclude
  inputBinding:
    prefix: --exclude
  type: File
- doc: '[flag to produce a html output appropreate for galaxy]'
  id: galaxy_html
  inputBinding:
    prefix: --galaxyhtml
  type: boolean
- doc: '[report events that pass significance threshold in condition as a whole (default
    mode)]'
  id: standard
  inputBinding:
    prefix: --standard
  type: boolean
- doc: '[report events that pass significance in >=1 replicate *or* the condition
    as a whole.]'
  id: lenient
  inputBinding:
    prefix: --lenient
  type: boolean
- doc: '[report events that pass significance in condition OR (>=1 replicate AND no
    signif diff between replicates)]'
  id: lenient_plus
  inputBinding:
    prefix: --lenientplus
  type: boolean
- doc: '<path to the meme bin dir (default: meme is in $PATH)>'
  id: meme_path
  inputBinding:
    prefix: --memepath
  type: boolean
- doc: '[flag to turn off motif-finding & motif priors]'
  id: no_motifs
  inputBinding:
    prefix: --nomotifs
  type: boolean
- doc: '[flag to turn off motif priors only]'
  id: no_motif_prior
  inputBinding:
    prefix: --nomotifprior
  type: boolean
- doc: <number of motifs MEME should find for each condition (default=3)>
  id: me_men_motifs
  inputBinding:
    prefix: --memenmotifs
  type: boolean
- doc: <minw arg for MEME (default=6)>
  id: meme_min_w
  inputBinding:
    prefix: --mememinw
  type: boolean
- doc: <maxw arg for MEME (default=18)>
  id: meme_max_w
  inputBinding:
    prefix: --mememaxw
  type: boolean
- doc: <additional args for MEME (default=  -dna -mod zoops -revcomp -nostatus)>
  id: meme_args
  inputBinding:
    prefix: --memeargs
  type: boolean
- doc: <minimum motif ROC value (default=0.7)>
  id: min_roc
  inputBinding:
    prefix: --minroc
  type: boolean
- doc: <minimum number of motif reference to support an subtype distribution update
    (default=50)>
  id: min_model_update_refs
  inputBinding:
    prefix: --minmodelupdaterefs
  type: boolean
- doc: <Filter out sequences with motifs below this threshold for recursively finding
    motifs (default=0.1)>
  id: seqr_mth_res
  inputBinding:
    prefix: --seqrmthres
  type: boolean
- doc: <motif length adjusted similarity threshold for merging subtypes using motifs;
    decrease for fewer subtypes (default=0.95)>
  id: motif_pcc_th_res
  inputBinding:
    prefix: --motifpccthres
  type: boolean
- doc: '[flag to turn off read distribution clustering]'
  id: no_clustering
  inputBinding:
    prefix: --noclustering
  type: boolean
- doc: <preference value for read distribution clustering (default=-0.1)>
  id: pref
  inputBinding:
    prefix: --pref
  type: boolean
- doc: <number of components to cluster (default=500)>
  id: num_comps
  inputBinding:
    prefix: --numcomps
  type: boolean
- doc: <window size of read profiles (default=150)>
  id: win
  inputBinding:
    prefix: --win
  type: boolean
- doc: <KL divergence dissimilarity threshold for merging subtypes using read distributions;
    increase for fewer subtypes (default=-10)>
  id: kl_divergence_th_res
  inputBinding:
    prefix: --kldivergencethres
  type: boolean
- doc: <Q-value minimum (default=0.01)>
  id: q
  inputBinding:
    prefix: --q
  type: boolean
- doc: <minimum event fold-change vs scaled control (default=1.5)>
  id: min_fold
  inputBinding:
    prefix: --minfold
  type: boolean
