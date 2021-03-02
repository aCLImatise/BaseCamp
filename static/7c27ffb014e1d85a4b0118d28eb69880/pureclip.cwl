class: CommandLineTool
id: pureclip.cwl
inputs:
- id: in_in
  doc: 'Target bam files. Valid filetype is: .bam.'
  type: string?
  inputBinding:
    prefix: --in
- id: in_bai
  doc: 'Target bam index files. Valid filetype is: .bai.'
  type: string?
  inputBinding:
    prefix: --bai
- id: in_genome
  doc: "Genome reference file. Valid filetypes are: .fa, .fasta, .fa.gz, and\n.fasta.gz."
  type: File?
  inputBinding:
    prefix: --genome
- id: in_out
  doc: 'Output file to write crosslink sites. Valid filetype is: .bed.'
  type: File?
  inputBinding:
    prefix: --out
- id: in_or
  doc: 'Output file to write binding regions. Valid filetype is: .bed.'
  type: File?
  inputBinding:
    prefix: --or
- id: in_par
  doc: Output file to write learned parameters.
  type: File?
  inputBinding:
    prefix: --par
- id: in_ctr
  doc: "Assign crosslink sites to read start positions. Note: depends on RT\nenzyme,\
    \ buffer conditions and likely on protein. Default: assign\ncrosslink sites to\
    \ positions upstream of read starts."
  type: boolean?
  inputBinding:
    prefix: --ctr
- id: in_st
  doc: "Scoring scheme. Default: 0 -> score_UC (log posterior probability\nratio of\
    \ most likely and second most likely state). In range [0..3]."
  type: long?
  inputBinding:
    prefix: --st
- id: in_inter
  doc: "Genomic chromosomes to learn HMM parameters, e.g. 'chr1;chr2;chr3'.\nContigs\
    \ have to be in the same order as in BAM file. Useful to\nreduce runtime and memory\
    \ consumption. Default: all contigs from\nreference file are used (useful when\
    \ applying to transcript-wise\nalignments or poor data)."
  type: File?
  inputBinding:
    prefix: --inter
- id: in_chr
  doc: "Contigs to apply HMM, e.g. 'chr1;chr2;chr3;'. Contigs have to be in\nthe same\
    \ order as in BAM file."
  type: File?
  inputBinding:
    prefix: --chr
- id: in_bc
  doc: "Flag to set parameters according to binding characteristics of\nprotein: see\
    \ description in section below. In range [0..1]."
  type: long?
  inputBinding:
    prefix: --bc
- id: in_bdw
  doc: "Bandwidth for kernel density estimation used to access enrichment.\nNOTE:\
    \ Increasing the bandwidth increases runtime and memory\nconsumption. Default:\
    \ 50. In range [1..500]."
  type: long?
  inputBinding:
    prefix: --bdw
- id: in_bd_wn
  doc: "Bandwidth for kernel density estimation used to estimate n for\nbinomial distributions.\
    \ For proteins that are rather sliding along\nthe RNA or showing long crosslink\
    \ clusters this should be increased,\ne.g. to 100 (should be <= 4*bdw). Default:\
    \ same as bdw. In range\n[1..500]."
  type: long?
  inputBinding:
    prefix: --bdwn
- id: in_dm
  doc: "Distance used to merge individual crosslink sites to binding\nregions. Default:\
    \ 8"
  type: long?
  inputBinding:
    prefix: --dm
- id: in_ld
  doc: "Use higher precision to store emission probabilities, state poster\nposterior\
    \ probabilities etc. (i.e. long double). Should not be\nnecessary anymore, due\
    \ to computations in log-space. Note: increases\nmemory consumption. Default:\
    \ double."
  type: boolean?
  inputBinding:
    prefix: --ld
- id: in_ts
  doc: 'Size of look-up table for log-sum-exp values. Default: 600000'
  type: long?
  inputBinding:
    prefix: --ts
- id: in_tmv
  doc: "Minimum value in look-up table for log-sum-exp values. Default:\n-2000"
  type: long?
  inputBinding:
    prefix: --tmv
- id: in_ur
  doc: "Flag to define which read should be selected for the analysis:\n1->R1, 2->R2.\
    \ Note: PureCLIP uses read starts corresponding to 3'\ncDNA ends. Thus if providing\
    \ paired-end data, only the corresponding\nread should be selected (e.g. eCLIP->R2,\
    \ iCLIP->R1). If applicable,\nused for input BAM file as well. Default: uses read\
    \ starts of all\nprovided reads assuming single-end or pre-filtered data. In range\n\
    [1..2]."
  type: long?
  inputBinding:
    prefix: --ur
- id: in_is
  doc: "Covariates file: position-wise values, e.g. smoothed reads start\ncounts (KDEs)\
    \ from input data. Valid filetype is: .bed."
  type: File?
  inputBinding:
    prefix: --is
- id: in_i_bam
  doc: "File containing mapped reads from control experiment, e.g. eCLIP\ninput. Valid\
    \ filetype is: .bam."
  type: File?
  inputBinding:
    prefix: --ibam
- id: in_i_bai
  doc: "File containing BAM index corresponding to mapped reads from control\nexperiment\
    \ Valid filetype is: .bai."
  type: File?
  inputBinding:
    prefix: --ibai
- id: in_fis
  doc: 'Fimo input motif score covariates file. Valid filetype is: .bed.'
  type: File?
  inputBinding:
    prefix: --fis
- id: in_nim
  doc: "Max. motif ID to use. Default: Only covariates with motif ID 1 are\nused."
  type: long?
  inputBinding:
    prefix: --nim
- id: in_up_e
  doc: Use (n dependent) pseudo emission probabilities for crosslink state.
  type: boolean?
  inputBinding:
    prefix: --upe
- id: in_mib_r
  doc: "Maximum number of iterations within BRENT algorithm. In range\n[1..1000]."
  type: long?
  inputBinding:
    prefix: --mibr
- id: in_mib_w
  doc: "Maximum number of iterations within Baum-Welch algorithm. In range\n[0..500]."
  type: long?
  inputBinding:
    prefix: --mibw
- id: in_gone_km_in
  doc: "Minimum shape k of 'non-enriched' gamma distribution (g1.k). In\nrange [1.5..inf]."
  type: long?
  inputBinding:
    prefix: --g1kmin
- id: in_gone_kmax
  doc: Maximum shape k of 'non-enriched' gamma distribution (g1.k).
  type: long?
  inputBinding:
    prefix: --g1kmax
- id: in_g_two_km_in
  doc: Minimum shape k of 'enriched' gamma distribution (g2.k).
  type: long?
  inputBinding:
    prefix: --g2kmin
- id: in_g_two_kmax
  doc: Maximum shape k of 'enriched' gamma distribution (g2.k).
  type: long?
  inputBinding:
    prefix: --g2kmax
- id: in_fk
  doc: "When incorporating input signal, do not constrain 'non-enriched'\nshape parameter\
    \ k <= 'enriched' gamma parameter k."
  type: boolean?
  inputBinding:
    prefix: --fk
- id: in_mkn
  doc: "Max. k/N ratio (read start sites/N) used to learn truncation\nprobabilities\
    \ for 'non-crosslink' and 'crosslink' emission\nprobabilities (high ratios might\
    \ originate from mapping artifacts\nthat can disturb parameter learning). Default:\
    \ 1.0 In range\n[0.5..1.5]."
  type: long?
  inputBinding:
    prefix: --mkn
- id: in_bone_p
  doc: "Initial value for binomial probability parameter of 'non-crosslink'\nstate.\
    \ Default: 0.01."
  type: long?
  inputBinding:
    prefix: --b1p
- id: in_btw_op
  doc: "Initial value for binomial probability parameter of 'crosslink'\nstate. Default:\
    \ 0.15."
  type: long?
  inputBinding:
    prefix: --b2p
- id: in_mtp
  doc: "Min. transition probability from state '2' to '3' (helpful for poor\ndata,\
    \ where no clear distinction between 'enriched' and\n'non-enriched' is possible).\
    \ Default: 0.0001."
  type: long?
  inputBinding:
    prefix: --mtp
- id: in_m_kde
  doc: "Minimum KDE value used for fitting left-truncated gamma\ndistributions. Default:\
    \ corresponding to singleton read start."
  type: long?
  inputBinding:
    prefix: --mkde
- id: in_ntp
  doc: "Only sites with n >= ntp are used to learn binomial probability\nparameters\
    \ (bin1.p, bin2.p). Default: 10"
  type: long?
  inputBinding:
    prefix: --ntp
- id: in_ntp_two
  doc: "Only sites with n >= ntp2 are used to learn probability of\ntransition from\
    \ state '2' to '2' or '3'. Useful for data with low\ntruncation rate at crosslink\
    \ sites or in general high fraction of\nnon-coinciding read starts. Default: 0"
  type: long?
  inputBinding:
    prefix: --ntp2
- id: in_a_ntp
  doc: "Automatically choose n threshold (-ntp, -ntp2) to estimate\nparameters linked\
    \ to crosslink states based on expected read start\ncount at crosslink sites."
  type: boolean?
  inputBinding:
    prefix: --antp
- id: in_pat
  doc: Length threshold for internal poly-X stretches to get excluded.
  type: long?
  inputBinding:
    prefix: --pat
- id: in_epal
  doc: Exclude intervals containing poly-A stretches from learning.
  type: boolean?
  inputBinding:
    prefix: --epal
- id: in_epa_a
  doc: Exclude intervals containing poly-A stretches from analysis.
  type: boolean?
  inputBinding:
    prefix: --epaa
- id: in_e_ptl
  doc: Exclude intervals containing poly-U stretches from learning.
  type: boolean?
  inputBinding:
    prefix: --eptl
- id: in_epta
  doc: Exclude intervals containing poly-U stretches from analysis.
  type: boolean?
  inputBinding:
    prefix: --epta
- id: in_m_rtf
  doc: Fit gamma shape k only for positions with min. covariate value.
  type: long?
  inputBinding:
    prefix: --mrtf
- id: in_mtc
  doc: "Maximum number of read starts at one position used for learning. For\nsites\
    \ with counts above threshold the whole covered regions will be\nignored for learning!\
    \ Default: 500. In range [50..50000]."
  type: long?
  inputBinding:
    prefix: --mtc
- id: in_mtc_two
  doc: "Maximum number of read starts at one position stored. For sites with\ncounts\
    \ above threshold the count will be truncated. Influences k and\nn. Default: 65000.\
    \ In range [5000..65000]."
  type: long?
  inputBinding:
    prefix: --mtc2
- id: in_pet
  doc: "Prior enrichment threshold: a KDE threshold corresponding to 7 read\nstart\
    \ counts at one position will be used for initial classification\nof 'non-enriched'\
    \ and 'enriched' site. Default: 7 In range [2..50]."
  type: long?
  inputBinding:
    prefix: --pet
- id: in_nt
  doc: Number of threads used for learning.
  type: long?
  inputBinding:
    prefix: --nt
- id: in_nta
  doc: "Number of threads used for applying learned parameters. Increases\nmemory\
    \ usage, if greater than number of chromosomes used for\nlearning, since HMM will\
    \ be build for multiple chromosomes in\nparallel. Default: min(nt, no. of chromosomes/transcripts\
    \ used for\nlearning)."
  type: long?
  inputBinding:
    prefix: --nta
- id: in_oa
  doc: "Outputs all sites with at least one read start in extended output\nformat."
  type: boolean?
  inputBinding:
    prefix: --oa
- id: in_quiet
  doc: Set verbosity to a minimum.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Enable verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_very_verbose
  doc: Enable very verbose output.
  type: boolean?
  inputBinding:
    prefix: --very-verbose
- id: in_zero_dot_one_dot
  doc: In case of different binding characteristics adjust parameters -bdw,
  type: double
  inputBinding:
    position: 0
- id: in_clusters
  doc: "pureclip -i target.bam -bai target.bai -g ref.fasta -o called_crosslinksites.bed\
    \ -nt 10  -iv '1;2;3;' -bc 1 -b2p 0.03 "
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Output file to write crosslink sites. Valid filetype is: .bed.'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_or
  doc: 'Output file to write binding regions. Valid filetype is: .bed.'
  type: File?
  outputBinding:
    glob: $(inputs.in_or)
- id: out_par
  doc: Output file to write learned parameters.
  type: File?
  outputBinding:
    glob: $(inputs.in_par)
hints: []
cwlVersion: v1.1
baseCommand:
- pureclip
