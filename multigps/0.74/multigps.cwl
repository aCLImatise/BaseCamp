class: CommandLineTool
id: multigps.cwl
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
- id: geninfo
  doc: AND --seq <fasta seq directory reqd if using motif prior>
  type: string
  inputBinding:
    prefix: --geninfo
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
- id: no_pos_prior
  doc: '[flag to turn off inter-experiment positional prior (default=on)]'
  type: boolean
  inputBinding:
    prefix: --noposprior
- id: prob_shared
  doc: <probability that events are shared across conditions (default=0.9)>
  type: boolean
  inputBinding:
    prefix: --probshared
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
- id: meme_path
  doc: '<path to the meme bin dir (default: meme is in $PATH)>'
  type: boolean
  inputBinding:
    prefix: --memepath
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
- id: meme1proc
  doc: '[flag to enforce non-parallel version of MEME]'
  type: boolean
  inputBinding:
    prefix: --meme1proc
- id: q
  doc: <Q-value minimum (default=0.001)>
  type: boolean
  inputBinding:
    prefix: --q
- id: min_fold
  doc: <minimum event fold-change vs scaled control (default=1.5)>
  type: boolean
  inputBinding:
    prefix: --minfold
- id: no_diff_tests
  doc: '[flag to turn off differential enrichment tests]'
  type: boolean
  inputBinding:
    prefix: --nodifftests
- id: rpath
  doc: '<path to the R bin dir (default: R is in $PATH). Note that you need to install
    edgeR separately>'
  type: boolean
  inputBinding:
    prefix: --rpath
- id: edge_rod
  doc: <EdgeR overdispersion parameter (default=0.15)>
  type: boolean
  inputBinding:
    prefix: --edgerod
- id: diff_p
  doc: <minimum p-value for reporting differential enrichment (default=0.01)>
  type: boolean
  inputBinding:
    prefix: --diffp
- id: events_are_txt
  doc: '[add .txt to events file extension]'
  type: boolean
  inputBinding:
    prefix: --eventsaretxt
outputs: []
cwlVersion: v1.1
baseCommand:
- multigps
