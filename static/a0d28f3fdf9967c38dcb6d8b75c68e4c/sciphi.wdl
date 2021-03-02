version 1.0

task Sciphi {
  input {
    String? in
    Directory? il
    File? ex
    File? me
    File? inc
    String? prefix_output_files
    Directory? ol
    Int? sa
    Int? maximal_number_iterations
    Int? ls
    Int? lz
    Int? zy_g
    Float? pr
    Boolean? arg_mark_loci
    Float? parameter_estimation_rate
    Float? ur
    Int? seed
    Int? tree_score_type
    Float? wild_mean
    Int? wild_over_dis
    Int? mutation_over_dis
    Int? ese
    Float? sub
    Int? md
    Int? mmw
    Int? cwm
    Int? mnp
    Int? mc
    Int? ms
    Int? mf
    Float? mff
    Int? bns
    Int? bnc
    Int? ncf
    Int? mnc
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
      ~{if (arg_mark_loci) then "-u" else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Name of the BAM files used to create the mpileup."
    il: "Directory from which to read intermediate results."
    ex: "File name of exclusion list (VCF format), containing\\nloci which should be ignored."
    me: "File name of mutations to exclude during the\\nsequencing error rate estimation (VCF format)."
    inc: "File name of inclusion list (VCF format) containing\\nVariants (CHROM, POS, REF, ALT) that should be\\nincluded."
    prefix_output_files: "Prefix of output files."
    ol: "This option is deprecated. The index will be saved in\\na folder specified with -o in \\\"last_index\\\". If\\ndesired, one can continue from here to explore more\\nsearch space."
    sa: "Sampling step. If a value x different from 0 is\\nspecified, every x iteration, after the burn in phase,\\nan index will be writen to disk to provide a posterior\\nsampling. [0]"
    maximal_number_iterations: "Maximal number of iterations before sampling form the\\nposterior distribution of the mutation to cell\\nassignment. [1000000]"
    ls: "Number of iterations in which the mutation to cell\\nassignment is sampled. [100000]"
    lz: "Set to 1 if zygosity should be learned. The zygosity\\nrate is the fraction of mutations which are homozygous\\nin all cells. [0]"
    zy_g: "Zygosity rate. [0]"
    pr: "Prior mutation rate [0.0001]."
    arg_mark_loci: "[ --uniq ] arg      Mark loci with this number of cells being mutated as\\n\\\"PASS\\\". [1]"
    parameter_estimation_rate: "Parameter estimation rate, i.e. the fraction of loops\\nused to estimate the different parameters. [0.2]"
    ur: "Data usage rate increment steps. In order to speed up\\nthe algorithm one can choose to iteratively add more\\nand more of the candidate loci while learning the tree\\nmodel. For example, 0.1 would mean to start with 10%\\nof the data, then use 20%, and so on. Per default, all\\ndata is used from the start. [1]"
    seed: "Seed for the random number generator. [42]"
    tree_score_type: "Tree score type [m (max), s (sum)]. [s]"
    wild_mean: "Mean error rate. If the sequencing error rate should\\nnot be learned \\\"--ese 0\\\" one can specify it. [0.001]"
    wild_over_dis: "Initial overdispersion for wild type. The\\noverdispersion is learned during the tree traversal.\\n[100]"
    mutation_over_dis: "Initial overdispersion for mutant type. The\\noverdispersion is learned during the tree\\ntraversal.[2]"
    ese: "Estimate the sequencing error rate. [1]"
    sub: "PCR substitution rate. An error early during the PCR\\namplification can result in high allele fractions.\\nThese are typically filtered out by requiring at least\\ntwo cells to be mutated. However, sometimes the PCR\\nerror in one cell is a real mutation in others. If in\\nsuch a scenario the coverage for the cell with the PCR\\nerror is high, SCIPhI will introduce false positives.\\nThis can be avoided by specifying the PCR error rate.\\nAs these events are rather unlikely very small values,\\nsuch as 0.0000001 should be chosen. In practice 0\\nworks very well.  [0]"
    md: "Window size in which only x (see option \\\"--mmw\\\")\\nmutations are allowed to be present. Some sequences\\nare prone to produce sequencing errors, which can be\\navoided by specifying a range in which only x\\nmutations are allowed. [1]"
    mmw: "Maximum number of mutations allowed per window. [1]"
    cwm: "Number of tumor cells required to have a mutation in\\norder to be called. [2]"
    mnp: "Number of cells which need to pass the filters\\ndescribed below. [2]"
    mc: "Minimum coverage required per cell. [1]"
    ms: "Minimum number of reads required to support the\\nalternative. [3]"
    mf: "Minimum required frequency of reads supporting the\\nalternative per cell. [0]"
    mff: "Mean of acceptable variant allele frequency across all\\ncells for a specific locus. Mapping artifacts may\\nresult in low allele frequencies across cells. In\\norder to filter these events out we apply a\\nlog-likelihood ratio test where the sequencing error\\nmodel has a mean of this value. [0.25]"
    bns: "Loci with up to this number of alternative supporting\\nreads in the bulk control sample will be skipped as\\ngermline. [2]"
    bnc: "Minimum required coverage of reads in the bulk control\\nsample. [6]"
    ncf: "Normal cell filter. Currently there are three options:\\n(0) Do not use the normal cells for filtering; (1) use\\na simple filtering scheme excluding mutations if the\\nprobability of being mutated is higher than not being\\nmutated for any cell independently; (2) filter\\nmutations where the probability that at least one cell\\nis mutated is higher than no cell is mutated. Note\\nthat in contrast to (1) the cells are not independent\\nand cells with no alternative support need to be\\nexplained via dropout events. [1]"
    mnc: "Maximum number of control cells allowed to be mutated.\\n[0]"
    unc: "Use normal cells for tree reconstruction. [false]"
  }
  output {
    File out_stdout = stdout()
  }
}