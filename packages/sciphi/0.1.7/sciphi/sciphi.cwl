class: CommandLineTool
id: sciphi.cwl
inputs:
- id: in_in
  doc: Name of the BAM files used to create the mpileup.
  type: string
  inputBinding:
    prefix: --in
- id: in_il
  doc: Directory from which to read intermediate results.
  type: Directory
  inputBinding:
    prefix: --il
- id: in_ex
  doc: "File name of exclusion list (VCF format), containing\nloci which should be\
    \ ignored."
  type: File
  inputBinding:
    prefix: --ex
- id: in_me
  doc: "File name of mutations to exclude during the\nsequencing error rate estimation\
    \ (VCF format)."
  type: File
  inputBinding:
    prefix: --me
- id: in_inc
  doc: "File name of inclusion list (VCF format) containing\nVariants (CHROM, POS,\
    \ REF, ALT) that should be\nincluded."
  type: File
  inputBinding:
    prefix: --inc
- id: in_prefix_output_files
  doc: Prefix of output files.
  type: string
  inputBinding:
    prefix: -o
- id: in_ol
  doc: "This option is deprecated. The index will be saved in\na folder specified\
    \ with -o in \"last_index\". If\ndesired, one can continue from here to explore\
    \ more\nsearch space."
  type: Directory
  inputBinding:
    prefix: --ol
- id: in_sa
  doc: "Sampling step. If a value x different from 0 is\nspecified, every x iteration,\
    \ after the burn in phase,\nan index will be writen to disk to provide a posterior\n\
    sampling. [0]"
  type: long
  inputBinding:
    prefix: --sa
- id: in_maximal_number_iterations
  doc: "Maximal number of iterations before sampling form the\nposterior distribution\
    \ of the mutation to cell\nassignment. [1000000]"
  type: long
  inputBinding:
    prefix: -l
- id: in_ls
  doc: "Number of iterations in which the mutation to cell\nassignment is sampled.\
    \ [100000]"
  type: long
  inputBinding:
    prefix: --ls
- id: in_lz
  doc: "Set to 1 if zygosity should be learned. The zygosity\nrate is the fraction\
    \ of mutations which are homozygous\nin all cells. [0]"
  type: long
  inputBinding:
    prefix: --lz
- id: in_zy_g
  doc: Zygosity rate. [0]
  type: long
  inputBinding:
    prefix: --zyg
- id: in_pr
  doc: Prior mutation rate [0.0001].
  type: double
  inputBinding:
    prefix: --pr
- id: in_arg_mark_loci
  doc: "[ --uniq ] arg      Mark loci with this number of cells being mutated as\n\
    \"PASS\". [1]"
  type: boolean
  inputBinding:
    prefix: -u
- id: in_parameter_estimation_rate
  doc: "Parameter estimation rate, i.e. the fraction of loops\nused to estimate the\
    \ different parameters. [0.2]"
  type: double
  inputBinding:
    prefix: -e
- id: in_ur
  doc: "Data usage rate increment steps. In order to speed up\nthe algorithm one can\
    \ choose to iteratively add more\nand more of the candidate loci while learning\
    \ the tree\nmodel. For example, 0.1 would mean to start with 10%\nof the data,\
    \ then use 20%, and so on. Per default, all\ndata is used from the start. [1]"
  type: double
  inputBinding:
    prefix: --ur
- id: in_seed
  doc: Seed for the random number generator. [42]
  type: long
  inputBinding:
    prefix: --seed
- id: in_tree_score_type
  doc: Tree score type [m (max), s (sum)]. [s]
  type: long
  inputBinding:
    prefix: -t
- id: in_wild_mean
  doc: "Mean error rate. If the sequencing error rate should\nnot be learned \"--ese\
    \ 0\" one can specify it. [0.001]"
  type: double
  inputBinding:
    prefix: --wildMean
- id: in_wild_over_dis
  doc: "Initial overdispersion for wild type. The\noverdispersion is learned during\
    \ the tree traversal.\n[100]"
  type: long
  inputBinding:
    prefix: --wildOverDis
- id: in_mutation_over_dis
  doc: "Initial overdispersion for mutant type. The\noverdispersion is learned during\
    \ the tree\ntraversal.[2]"
  type: long
  inputBinding:
    prefix: --mutationOverDis
- id: in_ese
  doc: Estimate the sequencing error rate. [1]
  type: long
  inputBinding:
    prefix: --ese
- id: in_sub
  doc: "PCR substitution rate. An error early during the PCR\namplification can result\
    \ in high allele fractions.\nThese are typically filtered out by requiring at\
    \ least\ntwo cells to be mutated. However, sometimes the PCR\nerror in one cell\
    \ is a real mutation in others. If in\nsuch a scenario the coverage for the cell\
    \ with the PCR\nerror is high, SCIPhI will introduce false positives.\nThis can\
    \ be avoided by specifying the PCR error rate.\nAs these events are rather unlikely\
    \ very small values,\nsuch as 0.0000001 should be chosen. In practice 0\nworks\
    \ very well.  [0]"
  type: double
  inputBinding:
    prefix: --sub
- id: in_md
  doc: "Window size in which only x (see option \"--mmw\")\nmutations are allowed\
    \ to be present. Some sequences\nare prone to produce sequencing errors, which\
    \ can be\navoided by specifying a range in which only x\nmutations are allowed.\
    \ [1]"
  type: long
  inputBinding:
    prefix: --md
- id: in_mmw
  doc: Maximum number of mutations allowed per window. [1]
  type: long
  inputBinding:
    prefix: --mmw
- id: in_cwm
  doc: "Number of tumor cells required to have a mutation in\norder to be called.\
    \ [2]"
  type: long
  inputBinding:
    prefix: --cwm
- id: in_mnp
  doc: "Number of cells which need to pass the filters\ndescribed below. [2]"
  type: long
  inputBinding:
    prefix: --mnp
- id: in_mc
  doc: Minimum coverage required per cell. [1]
  type: long
  inputBinding:
    prefix: --mc
- id: in_ms
  doc: "Minimum number of reads required to support the\nalternative. [3]"
  type: long
  inputBinding:
    prefix: --ms
- id: in_mf
  doc: "Minimum required frequency of reads supporting the\nalternative per cell.\
    \ [0]"
  type: long
  inputBinding:
    prefix: --mf
- id: in_mff
  doc: "Mean of acceptable variant allele frequency across all\ncells for a specific\
    \ locus. Mapping artifacts may\nresult in low allele frequencies across cells.\
    \ In\norder to filter these events out we apply a\nlog-likelihood ratio test where\
    \ the sequencing error\nmodel has a mean of this value. [0.25]"
  type: double
  inputBinding:
    prefix: --mff
- id: in_bns
  doc: "Loci with up to this number of alternative supporting\nreads in the bulk control\
    \ sample will be skipped as\ngermline. [2]"
  type: long
  inputBinding:
    prefix: --bns
- id: in_bnc
  doc: "Minimum required coverage of reads in the bulk control\nsample. [6]"
  type: long
  inputBinding:
    prefix: --bnc
- id: in_ncf
  doc: "Normal cell filter. Currently there are three options:\n(0) Do not use the\
    \ normal cells for filtering; (1) use\na simple filtering scheme excluding mutations\
    \ if the\nprobability of being mutated is higher than not being\nmutated for any\
    \ cell independently; (2) filter\nmutations where the probability that at least\
    \ one cell\nis mutated is higher than no cell is mutated. Note\nthat in contrast\
    \ to (1) the cells are not independent\nand cells with no alternative support\
    \ need to be\nexplained via dropout events. [1]"
  type: long
  inputBinding:
    prefix: --ncf
- id: in_mnc
  doc: "Maximum number of control cells allowed to be mutated.\n[0]"
  type: long
  inputBinding:
    prefix: --mnc
- id: in_unc
  doc: Use normal cells for tree reconstruction. [false]
  type: string
  inputBinding:
    prefix: --unc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sciphi
