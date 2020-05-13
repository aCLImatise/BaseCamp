class: CommandLineTool
id: pureclip.cwl
inputs:
- id: in
  doc: 'Target bam files. Valid filetype is: .bam.'
  type: string
  inputBinding:
    prefix: --in
- id: bai
  doc: 'Target bam index files. Valid filetype is: .bai.'
  type: string
  inputBinding:
    prefix: --bai
- id: genome
  doc: 'Genome reference file. Valid filetypes are: .fa, .fasta, .fa.gz, and .fasta.gz.'
  type: File
  inputBinding:
    prefix: --genome
- id: out
  doc: 'Output file to write crosslink sites. Valid filetype is: .bed.'
  type: File
  inputBinding:
    prefix: --out
- id: or
  doc: 'Output file to write binding regions. Valid filetype is: .bed.'
  type: File
  inputBinding:
    prefix: --or
- id: par
  doc: Output file to write learned parameters.
  type: File
  inputBinding:
    prefix: --par
- id: ctr
  doc: 'Assign crosslink sites to read start positions. Note: depends on RT enzyme,
    buffer conditions and likely on protein. Default: assign crosslink sites to positions
    upstream of read starts.'
  type: boolean
  inputBinding:
    prefix: --ctr
- id: st
  doc: 'Scoring scheme. Default: 0 -> score_UC (log posterior probability ratio of
    most likely and second most likely state). In range [0..3].'
  type: string
  inputBinding:
    prefix: --st
- id: inter
  doc: "Genomic chromosomes to learn HMM parameters, e.g. 'chr1;chr2;chr3'. Contigs\
    \ have to be in the same order as in BAM file. Useful to reduce runtime and memory\
    \ consumption. Default: all contigs from reference file are used (useful when\
    \ applying to transcript-wise alignments or poor data)."
  type: string
  inputBinding:
    prefix: --inter
- id: chr
  doc: Contigs to apply HMM, e.g. 'chr1;chr2;chr3;'. Contigs have to be in the same
    order as in BAM file.
  type: string
  inputBinding:
    prefix: --chr
- id: bc
  doc: 'Flag to set parameters according to binding characteristics of protein: see
    description in section below. In range [0..1].'
  type: string
  inputBinding:
    prefix: --bc
- id: bdw
  doc: 'Bandwidth for kernel density estimation used to access enrichment. NOTE: Increasing
    the bandwidth increases runtime and memory consumption. Default: 50. In range
    [1..500].'
  type: string
  inputBinding:
    prefix: --bdw
- id: bd_wn
  doc: 'Bandwidth for kernel density estimation used to estimate n for binomial distributions.
    For proteins that are rather sliding along the RNA or showing long crosslink clusters
    this should be increased, e.g. to 100 (should be <= 4*bdw). Default: same as bdw.
    In range [1..500].'
  type: string
  inputBinding:
    prefix: --bdwn
- id: dm
  doc: 'Distance used to merge individual crosslink sites to binding regions. Default:
    8'
  type: string
  inputBinding:
    prefix: --dm
- id: ld
  doc: 'Use higher precision to store emission probabilities, state poster posterior
    probabilities etc. (i.e. long double). Should not be necessary anymore, due to
    computations in log-space. Note: increases memory consumption. Default: double.'
  type: boolean
  inputBinding:
    prefix: --ld
- id: ts
  doc: 'Size of look-up table for log-sum-exp values. Default: 600000'
  type: string
  inputBinding:
    prefix: --ts
- id: tmv
  doc: 'Minimum value in look-up table for log-sum-exp values. Default: -2000'
  type: string
  inputBinding:
    prefix: --tmv
- id: ur
  doc: "Flag to define which read should be selected for the analysis: 1->R1, 2->R2.\
    \ Note: PureCLIP uses read starts corresponding to 3' cDNA ends. Thus if providing\
    \ paired-end data, only the corresponding read should be selected (e.g. eCLIP->R2,\
    \ iCLIP->R1). If applicable, used for input BAM file as well. Default: uses read\
    \ starts of all provided reads assuming single-end or pre-filtered data. In range\
    \ [1..2]."
  type: string
  inputBinding:
    prefix: --ur
- id: is
  doc: 'Covariates file: position-wise values, e.g. smoothed reads start counts (KDEs)
    from input data. Valid filetype is: .bed.'
  type: File
  inputBinding:
    prefix: --is
- id: i_bam
  doc: 'File containing mapped reads from control experiment, e.g. eCLIP input. Valid
    filetype is: .bam.'
  type: File
  inputBinding:
    prefix: --ibam
- id: i_bai
  doc: 'File containing BAM index corresponding to mapped reads from control experiment
    Valid filetype is: .bai.'
  type: File
  inputBinding:
    prefix: --ibai
- id: fis
  doc: 'Fimo input motif score covariates file. Valid filetype is: .bed.'
  type: File
  inputBinding:
    prefix: --fis
- id: nim
  doc: 'Max. motif ID to use. Default: Only covariates with motif ID 1 are used.'
  type: string
  inputBinding:
    prefix: --nim
- id: up_e
  doc: Use (n dependent) pseudo emission probabilities for crosslink state.
  type: boolean
  inputBinding:
    prefix: --upe
- id: mib_r
  doc: Maximum number of iterations within BRENT algorithm. In range [1..1000].
  type: string
  inputBinding:
    prefix: --mibr
- id: mib_w
  doc: Maximum number of iterations within Baum-Welch algorithm. In range [0..500].
  type: string
  inputBinding:
    prefix: --mibw
- id: g1kmin
  doc: Minimum shape k of 'non-enriched' gamma distribution (g1.k). In range [1.5..inf].
  type: string
  inputBinding:
    prefix: --g1kmin
- id: g1kmax
  doc: Maximum shape k of 'non-enriched' gamma distribution (g1.k).
  type: string
  inputBinding:
    prefix: --g1kmax
- id: g2kmin
  doc: Minimum shape k of 'enriched' gamma distribution (g2.k).
  type: string
  inputBinding:
    prefix: --g2kmin
- id: g2kmax
  doc: Maximum shape k of 'enriched' gamma distribution (g2.k).
  type: string
  inputBinding:
    prefix: --g2kmax
- id: fk
  doc: When incorporating input signal, do not constrain 'non-enriched' shape parameter
    k <= 'enriched' gamma parameter k.
  type: boolean
  inputBinding:
    prefix: --fk
- id: mkn
  doc: "Max. k/N ratio (read start sites/N) used to learn truncation probabilities\
    \ for 'non-crosslink' and 'crosslink' emission probabilities (high ratios might\
    \ originate from mapping artifacts that can disturb parameter learning). Default:\
    \ 1.0 In range [0.5..1.5]."
  type: string
  inputBinding:
    prefix: --mkn
- id: b1p
  doc: "Initial value for binomial probability parameter of 'non-crosslink' state.\
    \ Default: 0.01."
  type: string
  inputBinding:
    prefix: --b1p
- id: b2p
  doc: "Initial value for binomial probability parameter of 'crosslink' state. Default:\
    \ 0.15."
  type: string
  inputBinding:
    prefix: --b2p
- id: mtp
  doc: "Min. transition probability from state '2' to '3' (helpful for poor data,\
    \ where no clear distinction between 'enriched' and 'non-enriched' is possible).\
    \ Default: 0.0001."
  type: string
  inputBinding:
    prefix: --mtp
- id: m_kde
  doc: 'Minimum KDE value used for fitting left-truncated gamma distributions. Default:
    corresponding to singleton read start.'
  type: string
  inputBinding:
    prefix: --mkde
- id: ntp
  doc: 'Only sites with n >= ntp are used to learn binomial probability parameters
    (bin1.p, bin2.p). Default: 10'
  type: string
  inputBinding:
    prefix: --ntp
- id: ntp2
  doc: "Only sites with n >= ntp2 are used to learn probability of transition from\
    \ state '2' to '2' or '3'. Useful for data with low truncation rate at crosslink\
    \ sites or in general high fraction of non-coinciding read starts. Default: 0"
  type: string
  inputBinding:
    prefix: --ntp2
- id: a_ntp
  doc: Automatically choose n threshold (-ntp, -ntp2) to estimate parameters linked
    to crosslink states based on expected read start count at crosslink sites.
  type: boolean
  inputBinding:
    prefix: --antp
- id: pat
  doc: Length threshold for internal poly-X stretches to get excluded.
  type: string
  inputBinding:
    prefix: --pat
- id: epal
  doc: Exclude intervals containing poly-A stretches from learning.
  type: boolean
  inputBinding:
    prefix: --epal
- id: epa_a
  doc: Exclude intervals containing poly-A stretches from analysis.
  type: boolean
  inputBinding:
    prefix: --epaa
- id: e_ptl
  doc: Exclude intervals containing poly-U stretches from learning.
  type: boolean
  inputBinding:
    prefix: --eptl
- id: epta
  doc: Exclude intervals containing poly-U stretches from analysis.
  type: boolean
  inputBinding:
    prefix: --epta
- id: m_rtf
  doc: Fit gamma shape k only for positions with min. covariate value.
  type: string
  inputBinding:
    prefix: --mrtf
- id: mtc
  doc: 'Maximum number of read starts at one position used for learning. For sites
    with counts above threshold the whole covered regions will be ignored for learning!
    Default: 500. In range [50..50000].'
  type: string
  inputBinding:
    prefix: --mtc
- id: mtc2
  doc: 'Maximum number of read starts at one position stored. For sites with counts
    above threshold the count will be truncated. Influences k and n. Default: 65000.
    In range [5000..65000].'
  type: string
  inputBinding:
    prefix: --mtc2
- id: pet
  doc: "Prior enrichment threshold: a KDE threshold corresponding to 7 read start\
    \ counts at one position will be used for initial classification of 'non-enriched'\
    \ and 'enriched' site. Default: 7 In range [2..50]."
  type: string
  inputBinding:
    prefix: --pet
- id: nt
  doc: Number of threads used for learning.
  type: string
  inputBinding:
    prefix: --nt
- id: nta
  doc: 'Number of threads used for applying learned parameters. Increases memory usage,
    if greater than number of chromosomes used for learning, since HMM will be build
    for multiple chromosomes in parallel. Default: min(nt, no. of chromosomes/transcripts
    used for learning).'
  type: string
  inputBinding:
    prefix: --nta
- id: oa
  doc: Outputs all sites with at least one read start in extended output format.
  type: boolean
  inputBinding:
    prefix: --oa
- id: quiet
  doc: Set verbosity to a minimum.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: very_verbose
  doc: Enable very verbose output.
  type: boolean
  inputBinding:
    prefix: --very-verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- pureclip
