class: CommandLineTool
id: sciphi.cwl
inputs:
- id: in
  doc: Name of the BAM files used to create the mpileup.
  type: string
  inputBinding:
    prefix: --in
- id: il
  doc: Directory from which to read intermediate results.
  type: string
  inputBinding:
    prefix: --il
- id: ex
  doc: File name of exclusion list (VCF format), containing  loci which should be
    ignored.
  type: string
  inputBinding:
    prefix: --ex
- id: me
  doc: File name of mutations to exclude during the  sequencing error rate estimation
    (VCF format).
  type: string
  inputBinding:
    prefix: --me
- id: inc
  doc: File name of inclusion list (VCF format) containing  Variants (CHROM, POS,
    REF, ALT) that should be  included.
  type: string
  inputBinding:
    prefix: --inc
- id: o
  doc: Prefix of output files.
  type: string
  inputBinding:
    prefix: -o
- id: ol
  doc: This option is deprecated. The index will be saved in  a folder specified with
    -o in "last_index". If  desired, one can continue from here to explore more  search
    space.
  type: string
  inputBinding:
    prefix: --ol
- id: sa
  doc: Sampling step. If a value x different from 0 is  specified, every x iteration,
    after the burn in phase, an index will be writen to disk to provide a posterior
    sampling. [0]
  type: string
  inputBinding:
    prefix: --sa
- id: l
  doc: Maximal number of iterations before sampling form the  posterior distribution
    of the mutation to cell  assignment. [1000000]
  type: string
  inputBinding:
    prefix: -l
- id: ls
  doc: Number of iterations in which the mutation to cell  assignment is sampled.
    [100000]
  type: string
  inputBinding:
    prefix: --ls
- id: lz
  doc: Set to 1 if zygosity should be learned. The zygosity  rate is the fraction
    of mutations which are homozygous in all cells. [0]
  type: string
  inputBinding:
    prefix: --lz
- id: zy_g
  doc: Zygosity rate. [0]
  type: string
  inputBinding:
    prefix: --zyg
- id: pr
  doc: Prior mutation rate [0.0001].
  type: string
  inputBinding:
    prefix: --pr
- id: u
  doc: '[ --uniq ] arg      Mark loci with this number of cells being mutated as  "PASS".
    [1]'
  type: boolean
  inputBinding:
    prefix: -u
- id: e
  doc: Parameter estimation rate, i.e. the fraction of loops  used to estimate the
    different parameters. [0.2]
  type: string
  inputBinding:
    prefix: -e
- id: ur
  doc: Data usage rate increment steps. In order to speed up  the algorithm one can
    choose to iteratively add more  and more of the candidate loci while learning
    the tree model. For example, 0.1 would mean to start with 10%  of the data, then
    use 20%, and so on. Per default, all data is used from the start. [1]
  type: string
  inputBinding:
    prefix: --ur
- id: seed
  doc: Seed for the random number generator. [42]
  type: string
  inputBinding:
    prefix: --seed
- id: t
  doc: Tree score type [m (max), s (sum)]. [s]
  type: string
  inputBinding:
    prefix: -t
- id: wild_mean
  doc: Mean error rate. If the sequencing error rate should  not be learned "--ese
    0" one can specify it. [0.001]
  type: string
  inputBinding:
    prefix: --wildMean
- id: wild_over_dis
  doc: Initial overdispersion for wild type. The  overdispersion is learned during
    the tree traversal.  [100]
  type: string
  inputBinding:
    prefix: --wildOverDis
- id: mutation_over_dis
  doc: Initial overdispersion for mutant type. The  overdispersion is learned during
    the tree  traversal.[2]
  type: string
  inputBinding:
    prefix: --mutationOverDis
- id: ese
  doc: Estimate the sequencing error rate. [1]
  type: string
  inputBinding:
    prefix: --ese
- id: sub
  doc: PCR substitution rate. An error early during the PCR  amplification can result
    in high allele fractions.  These are typically filtered out by requiring at least
    two cells to be mutated. However, sometimes the PCR  error in one cell is a real
    mutation in others. If in  such a scenario the coverage for the cell with the
    PCR error is high, SCIPhI will introduce false positives.  This can be avoided
    by specifying the PCR error rate.  As these events are rather unlikely very small
    values, such as 0.0000001 should be chosen. In practice 0  works very well.  [0]
  type: string
  inputBinding:
    prefix: --sub
- id: md
  doc: Window size in which only x (see option "--mmw")  mutations are allowed to
    be present. Some sequences  are prone to produce sequencing errors, which can
    be  avoided by specifying a range in which only x  mutations are allowed. [1]
  type: string
  inputBinding:
    prefix: --md
- id: mmw
  doc: Maximum number of mutations allowed per window. [1]
  type: string
  inputBinding:
    prefix: --mmw
- id: cwm
  doc: Number of tumor cells required to have a mutation in  order to be called. [2]
  type: string
  inputBinding:
    prefix: --cwm
- id: mnp
  doc: Number of cells which need to pass the filters  described below. [2]
  type: string
  inputBinding:
    prefix: --mnp
- id: mc
  doc: Minimum coverage required per cell. [1]
  type: string
  inputBinding:
    prefix: --mc
- id: ms
  doc: Minimum number of reads required to support the  alternative. [3]
  type: string
  inputBinding:
    prefix: --ms
- id: mf
  doc: Minimum required frequency of reads supporting the  alternative per cell. [0]
  type: string
  inputBinding:
    prefix: --mf
- id: mff
  doc: Mean of acceptable variant allele frequency across all cells for a specific
    locus. Mapping artifacts may  result in low allele frequencies across cells. In  order
    to filter these events out we apply a  log-likelihood ratio test where the sequencing
    error  model has a mean of this value. [0.25]
  type: string
  inputBinding:
    prefix: --mff
- id: bns
  doc: Loci with up to this number of alternative supporting  reads in the bulk control
    sample will be skipped as  germline. [2]
  type: string
  inputBinding:
    prefix: --bns
- id: bnc
  doc: Minimum required coverage of reads in the bulk control sample. [6]
  type: string
  inputBinding:
    prefix: --bnc
- id: ncf
  doc: 'Normal cell filter. Currently there are three options: (0) Do not use the
    normal cells for filtering; (1) use a simple filtering scheme excluding mutations
    if the  probability of being mutated is higher than not being  mutated for any
    cell independently; (2) filter  mutations where the probability that at least
    one cell is mutated is higher than no cell is mutated. Note  that in contrast
    to (1) the cells are not independent  and cells with no alternative support need
    to be  explained via dropout events. [1]'
  type: string
  inputBinding:
    prefix: --ncf
- id: mnc
  doc: Maximum number of control cells allowed to be mutated. [0]
  type: string
  inputBinding:
    prefix: --mnc
- id: unc
  doc: Use normal cells for tree reconstruction. [false]
  type: string
  inputBinding:
    prefix: --unc
outputs: []
cwlVersion: v1.1
baseCommand:
- sciphi
