version 1.0

task Sciphi {
  input {
    String? in
    String? il
    String? ex
    String? me
    String? inc
    String? prefix_output_files
    String? ol
    String? sa
    String? maximal_number_iterations
    String? ls
    String? lz
    String? zy_g
    String? pr
    Boolean? u
    String? parameter_estimation_rate
    String? ur
    String? seed
    String? tree_score_type
    String? wild_mean
    String? wild_over_dis
    String? mutation_over_dis
    String? ese
    String? sub
    String? md
    String? mmw
    String? cwm
    String? mnp
    String? mc
    String? ms
    String? mf
    String? mff
    String? bns
    String? bnc
    String? ncf
    String? mnc
    String? unc
  }
  command <<<
    sciphi \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(il) then ("--il " +  '"' + il + '"') else ""} \
      ~{if defined(ex) then ("--ex " +  '"' + ex + '"') else ""} \
      ~{if defined(me) then ("--me " +  '"' + me + '"') else ""} \
      ~{if defined(inc) then ("--inc " +  '"' + inc + '"') else ""} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(ol) then ("--ol " +  '"' + ol + '"') else ""} \
      ~{if defined(sa) then ("--sa " +  '"' + sa + '"') else ""} \
      ~{if defined(maximal_number_iterations) then ("-l " +  '"' + maximal_number_iterations + '"') else ""} \
      ~{if defined(ls) then ("--ls " +  '"' + ls + '"') else ""} \
      ~{if defined(lz) then ("--lz " +  '"' + lz + '"') else ""} \
      ~{if defined(zy_g) then ("--zyg " +  '"' + zy_g + '"') else ""} \
      ~{if defined(pr) then ("--pr " +  '"' + pr + '"') else ""} \
      ~{true="-u" false="" u} \
      ~{if defined(parameter_estimation_rate) then ("-e " +  '"' + parameter_estimation_rate + '"') else ""} \
      ~{if defined(ur) then ("--ur " +  '"' + ur + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(tree_score_type) then ("-t " +  '"' + tree_score_type + '"') else ""} \
      ~{if defined(wild_mean) then ("--wildMean " +  '"' + wild_mean + '"') else ""} \
      ~{if defined(wild_over_dis) then ("--wildOverDis " +  '"' + wild_over_dis + '"') else ""} \
      ~{if defined(mutation_over_dis) then ("--mutationOverDis " +  '"' + mutation_over_dis + '"') else ""} \
      ~{if defined(ese) then ("--ese " +  '"' + ese + '"') else ""} \
      ~{if defined(sub) then ("--sub " +  '"' + sub + '"') else ""} \
      ~{if defined(md) then ("--md " +  '"' + md + '"') else ""} \
      ~{if defined(mmw) then ("--mmw " +  '"' + mmw + '"') else ""} \
      ~{if defined(cwm) then ("--cwm " +  '"' + cwm + '"') else ""} \
      ~{if defined(mnp) then ("--mnp " +  '"' + mnp + '"') else ""} \
      ~{if defined(mc) then ("--mc " +  '"' + mc + '"') else ""} \
      ~{if defined(ms) then ("--ms " +  '"' + ms + '"') else ""} \
      ~{if defined(mf) then ("--mf " +  '"' + mf + '"') else ""} \
      ~{if defined(mff) then ("--mff " +  '"' + mff + '"') else ""} \
      ~{if defined(bns) then ("--bns " +  '"' + bns + '"') else ""} \
      ~{if defined(bnc) then ("--bnc " +  '"' + bnc + '"') else ""} \
      ~{if defined(ncf) then ("--ncf " +  '"' + ncf + '"') else ""} \
      ~{if defined(mnc) then ("--mnc " +  '"' + mnc + '"') else ""} \
      ~{if defined(unc) then ("--unc " +  '"' + unc + '"') else ""}
  >>>
  parameter_meta {
    in: "Name of the BAM files used to create the mpileup."
    il: "Directory from which to read intermediate results."
    ex: "File name of exclusion list (VCF format), containing  loci which should be ignored."
    me: "File name of mutations to exclude during the  sequencing error rate estimation (VCF format)."
    inc: "File name of inclusion list (VCF format) containing  Variants (CHROM, POS, REF, ALT) that should be  included."
    prefix_output_files: "Prefix of output files."
    ol: "This option is deprecated. The index will be saved in  a folder specified with -o in \"last_index\". If  desired, one can continue from here to explore more  search space."
    sa: "Sampling step. If a value x different from 0 is  specified, every x iteration, after the burn in phase, an index will be writen to disk to provide a posterior sampling. [0]"
    maximal_number_iterations: "Maximal number of iterations before sampling form the  posterior distribution of the mutation to cell  assignment. [1000000]"
    ls: "Number of iterations in which the mutation to cell  assignment is sampled. [100000]"
    lz: "Set to 1 if zygosity should be learned. The zygosity  rate is the fraction of mutations which are homozygous in all cells. [0]"
    zy_g: "Zygosity rate. [0]"
    pr: "Prior mutation rate [0.0001]."
    u: "[ --uniq ] arg      Mark loci with this number of cells being mutated as  \"PASS\". [1]"
    parameter_estimation_rate: "Parameter estimation rate, i.e. the fraction of loops  used to estimate the different parameters. [0.2]"
    ur: "Data usage rate increment steps. In order to speed up  the algorithm one can choose to iteratively add more  and more of the candidate loci while learning the tree model. For example, 0.1 would mean to start with 10%  of the data, then use 20%, and so on. Per default, all data is used from the start. [1]"
    seed: "Seed for the random number generator. [42]"
    tree_score_type: "Tree score type [m (max), s (sum)]. [s]"
    wild_mean: "Mean error rate. If the sequencing error rate should  not be learned \"--ese 0\" one can specify it. [0.001]"
    wild_over_dis: "Initial overdispersion for wild type. The  overdispersion is learned during the tree traversal.  [100]"
    mutation_over_dis: "Initial overdispersion for mutant type. The  overdispersion is learned during the tree  traversal.[2]"
    ese: "Estimate the sequencing error rate. [1]"
    sub: "PCR substitution rate. An error early during the PCR  amplification can result in high allele fractions.  These are typically filtered out by requiring at least two cells to be mutated. However, sometimes the PCR  error in one cell is a real mutation in others. If in  such a scenario the coverage for the cell with the PCR error is high, SCIPhI will introduce false positives.  This can be avoided by specifying the PCR error rate.  As these events are rather unlikely very small values, such as 0.0000001 should be chosen. In practice 0  works very well.  [0]"
    md: "Window size in which only x (see option \"--mmw\")  mutations are allowed to be present. Some sequences  are prone to produce sequencing errors, which can be  avoided by specifying a range in which only x  mutations are allowed. [1]"
    mmw: "Maximum number of mutations allowed per window. [1]"
    cwm: "Number of tumor cells required to have a mutation in  order to be called. [2]"
    mnp: "Number of cells which need to pass the filters  described below. [2]"
    mc: "Minimum coverage required per cell. [1]"
    ms: "Minimum number of reads required to support the  alternative. [3]"
    mf: "Minimum required frequency of reads supporting the  alternative per cell. [0]"
    mff: "Mean of acceptable variant allele frequency across all cells for a specific locus. Mapping artifacts may  result in low allele frequencies across cells. In  order to filter these events out we apply a  log-likelihood ratio test where the sequencing error  model has a mean of this value. [0.25]"
    bns: "Loci with up to this number of alternative supporting  reads in the bulk control sample will be skipped as  germline. [2]"
    bnc: "Minimum required coverage of reads in the bulk control sample. [6]"
    ncf: "Normal cell filter. Currently there are three options: (0) Do not use the normal cells for filtering; (1) use a simple filtering scheme excluding mutations if the  probability of being mutated is higher than not being  mutated for any cell independently; (2) filter  mutations where the probability that at least one cell is mutated is higher than no cell is mutated. Note  that in contrast to (1) the cells are not independent  and cells with no alternative support need to be  explained via dropout events. [1]"
    mnc: "Maximum number of control cells allowed to be mutated. [0]"
    unc: "Use normal cells for tree reconstruction. [false]"
  }
}