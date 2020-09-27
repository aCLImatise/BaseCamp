class: CommandLineTool
id: chexmix.cwl
inputs:
- id: in_out
  doc: "--threads <number of threads to use (default=1)>\n--verbose [flag to print\
    \ intermediate files and extra output]\n--config <config file: all options here\
    \ can be specified in a name<space>value text file, over-ridden by command-line\
    \ args>"
  type: File
  inputBinding:
    prefix: --out
- id: in_geninfo
  doc: "AND --seq <fasta seq directory reqd if finding motif>\n--back <Markov background\
    \ model file reqd if finding motif>"
  type: File
  inputBinding:
    prefix: --geninfo
- id: in_expt
  doc: "AND --format <SAM/BED/IDX>\n--ctrl <file name (optional argument. must be\
    \ same format as expt files)>\n--design <experiment design file name to use instead\
    \ of --expt and --ctrl; see website for format>\n--fixedpb <fixed per base limit\
    \ (default: estimated from background model)>\n--poissongausspb <filter per base\
    \ using a Poisson threshold parameterized by a local Gaussian sliding window>\n\
    --nonunique [flag to use non-unique reads]\n--mappability <fraction of the genome\
    \ that is mappable for these experiments (default=0.8)>\n--nocache [flag to turn\
    \ off caching of the entire set of experiments (i.e. run slower with less memory)]"
  type: File
  inputBinding:
    prefix: --expt
- id: in_no_scaling
  doc: '[flag to turn off auto estimation of signal vs control scaling factor]'
  type: boolean
  inputBinding:
    prefix: --noscaling
- id: in_median_scale
  doc: '[flag to use scaling by median ratio (default = scaling by NCIS)]'
  type: boolean
  inputBinding:
    prefix: --medianscale
- id: in_regression_scale
  doc: '[flag to use scaling by regression (default = scaling by NCIS)]'
  type: boolean
  inputBinding:
    prefix: --regressionscale
- id: in_ses_scale
  doc: '[flag to use scaling by SES (default = scaling by NCIS)]'
  type: boolean
  inputBinding:
    prefix: --sesscale
- id: in_fixed_scaling
  doc: '<multiply control counts by total tag count ratio and then by this factor
    (default: NCIS)>'
  type: boolean
  inputBinding:
    prefix: --fixedscaling
- id: in_scale_win
  doc: <window size for scaling procedure (default=10000)>
  type: boolean
  inputBinding:
    prefix: --scalewin
- id: in_plot_scaling
  doc: '[flag to plot diagnostic information for the chosen scaling method]'
  type: boolean
  inputBinding:
    prefix: --plotscaling
- id: in_round
  doc: "<max. model update rounds (default=3)>\n--bmwindowmax <max. window size for\
    \ running a mixture model over binding events (default=2000)>\n--nomodelupdate\
    \ [flag to turn off binding model updates]\n--minmodelupdateevents <minimum number\
    \ of events to support an update using read distributions (default=100)>\n--prlogconf\
    \ <Poisson log threshold for potential region scanning (default=-6)>\n--fixedalpha\
    \ <binding events must have at least this number of reads (default: set automatically)>\n\
    --alphascale <alpha scaling factor; increase for stricter event calls (default=1.0)>\n\
    --betascale <beta scaling factor; prior on subtype assignment (default=0.05)>\n\
    --epsilonscale <epsilon scaling factor; increase for more weight on motif in subtype\
    \ assignment (default=0.2)>\n--minsubtypefrac <subtypes must have at least this\
    \ percentage of associated binding events; increase for fewer subtypes (default=0.05)>\n\
    --peakf <file of peaks to initialize component positions>\n--exclude <file of\
    \ regions to ignore> OR --excludebed <file of regions to ignore in bed format>\n\
    --galaxyhtml [flag to produce a html output appropreate for galaxy]"
  type: boolean
  inputBinding:
    prefix: --round
- id: in_standard
  doc: '[report events that pass significance threshold in condition as a whole (default
    mode)]'
  type: boolean
  inputBinding:
    prefix: --standard
- id: in_lenient
  doc: '[report events that pass significance in >=1 replicate *or* the condition
    as a whole.]'
  type: boolean
  inputBinding:
    prefix: --lenient
- id: in_lenient_plus
  doc: '[report events that pass significance in condition OR (>=1 replicate AND no
    signif diff between replicates)]'
  type: boolean
  inputBinding:
    prefix: --lenientplus
- id: in_mot_file
  doc: "--memepath <path to the meme bin dir (default: meme is in $PATH)>\n--nomotifs\
    \ [flag to turn off motif-finding & motif priors]\n--nomotifprior [flag to turn\
    \ off motif priors only]\n--memenmotifs <number of motifs MEME should find for\
    \ each condition (default=3)>\n--mememinw <minw arg for MEME (default=6)>\n--mememaxw\
    \ <maxw arg for MEME (default=18)>\n--memeargs <additional args for MEME (default=\
    \  -dna -mod zoops -revcomp -nostatus)>\n--minroc <minimum motif ROC value (default=0.7)>\n\
    --minmodelupdaterefs <minimum number of motif reference to support an subtype\
    \ distribution update (default=50)>\n--seqrmthres <Filter out sequences with motifs\
    \ below this threshold for recursively finding motifs (default=0.1)>\n--motifpccthres\
    \ <motif length adjusted similarity threshold for merging subtypes using motifs;\
    \ decrease for fewer subtypes (default=0.95)>"
  type: File
  inputBinding:
    prefix: --motfile
- id: in_no_clustering
  doc: '[flag to turn off read distribution clustering]'
  type: boolean
  inputBinding:
    prefix: --noclustering
- id: in_pref
  doc: <preference value for read distribution clustering (default=-0.1)>
  type: boolean
  inputBinding:
    prefix: --pref
- id: in_num_comps
  doc: <number of components to cluster (default=500)>
  type: boolean
  inputBinding:
    prefix: --numcomps
- id: in_win
  doc: <window size of read profiles (default=150)>
  type: boolean
  inputBinding:
    prefix: --win
- id: in_kl_divergence_th_res
  doc: <KL divergence dissimilarity threshold for merging subtypes using read distributions;
    increase for fewer subtypes (default=-10)>
  type: boolean
  inputBinding:
    prefix: --kldivergencethres
- id: in_qvalue_minimum_default
  doc: <Q-value minimum (default=0.01)>
  type: boolean
  inputBinding:
    prefix: --q
- id: in_min_fold
  doc: <minimum event fold-change vs scaled control (default=1.5)>
  type: boolean
  inputBinding:
    prefix: --minfold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "--threads <number of threads to use (default=1)>\n--verbose [flag to print\
    \ intermediate files and extra output]\n--config <config file: all options here\
    \ can be specified in a name<space>value text file, over-ridden by command-line\
    \ args>"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- chexmix
