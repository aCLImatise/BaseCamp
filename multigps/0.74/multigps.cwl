#!/usr/bin/env cwl-runner

baseCommand:
- multigps
class: CommandLineTool
cwlVersion: v1.0
id: multigps
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
- doc: AND --seq <fasta seq directory reqd if using motif prior>
  id: geninfo
  inputBinding:
    prefix: --geninfo
  type: string
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
- doc: '[flag to turn off inter-experiment positional prior (default=on)]'
  id: no_pos_prior
  inputBinding:
    prefix: --noposprior
  type: boolean
- doc: <probability that events are shared across conditions (default=0.9)>
  id: prob_shared
  inputBinding:
    prefix: --probshared
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
- doc: '<path to the meme bin dir (default: meme is in $PATH)>'
  id: meme_path
  inputBinding:
    prefix: --memepath
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
- doc: '[flag to enforce non-parallel version of MEME]'
  id: meme1proc
  inputBinding:
    prefix: --meme1proc
  type: boolean
- doc: <Q-value minimum (default=0.001)>
  id: q
  inputBinding:
    prefix: --q
  type: boolean
- doc: <minimum event fold-change vs scaled control (default=1.5)>
  id: min_fold
  inputBinding:
    prefix: --minfold
  type: boolean
- doc: '[flag to turn off differential enrichment tests]'
  id: no_diff_tests
  inputBinding:
    prefix: --nodifftests
  type: boolean
- doc: '<path to the R bin dir (default: R is in $PATH). Note that you need to install
    edgeR separately>'
  id: rpath
  inputBinding:
    prefix: --rpath
  type: boolean
- doc: <EdgeR overdispersion parameter (default=0.15)>
  id: edge_rod
  inputBinding:
    prefix: --edgerod
  type: boolean
- doc: <minimum p-value for reporting differential enrichment (default=0.01)>
  id: diff_p
  inputBinding:
    prefix: --diffp
  type: boolean
- doc: '[add .txt to events file extension]'
  id: events_are_txt
  inputBinding:
    prefix: --eventsaretxt
  type: boolean
