version 1.0

task Pureclip {
  input {
    String? in
    String? bai
    File? genome
    File? out
    File? or
    File? par
    Boolean? ctr
    Int? st
    File? inter
    File? chr
    Int? bc
    Int? bdw
    Int? bd_wn
    Int? dm
    Boolean? ld
    Int? ts
    Int? tmv
    Int? ur
    File? is
    File? i_bam
    File? i_bai
    File? fis
    Int? nim
    Boolean? up_e
    Int? mib_r
    Int? mib_w
    Int? gone_km_in
    Int? gone_kmax
    Int? g_two_km_in
    Int? g_two_kmax
    Boolean? fk
    Int? mkn
    Int? bone_p
    Int? btw_op
    Int? mtp
    Int? m_kde
    Int? ntp
    Int? ntp_two
    Boolean? a_ntp
    Int? pat
    Boolean? epal
    Boolean? epa_a
    Boolean? e_ptl
    Boolean? epta
    Int? m_rtf
    Int? mtc
    Int? mtc_two
    Int? pet
    Int? nt
    Int? nta
    Boolean? oa
    Boolean? quiet
    Boolean? verbose
    Boolean? very_verbose
    Float zero_dot_one_dot
    String clusters
  }
  command <<<
    pureclip \
      ~{zero_dot_one_dot} \
      ~{clusters} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(bai) then ("--bai " +  '"' + bai + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(or) then ("--or " +  '"' + or + '"') else ""} \
      ~{if defined(par) then ("--par " +  '"' + par + '"') else ""} \
      ~{if (ctr) then "--ctr" else ""} \
      ~{if defined(st) then ("--st " +  '"' + st + '"') else ""} \
      ~{if defined(inter) then ("--inter " +  '"' + inter + '"') else ""} \
      ~{if defined(chr) then ("--chr " +  '"' + chr + '"') else ""} \
      ~{if defined(bc) then ("--bc " +  '"' + bc + '"') else ""} \
      ~{if defined(bdw) then ("--bdw " +  '"' + bdw + '"') else ""} \
      ~{if defined(bd_wn) then ("--bdwn " +  '"' + bd_wn + '"') else ""} \
      ~{if defined(dm) then ("--dm " +  '"' + dm + '"') else ""} \
      ~{if (ld) then "--ld" else ""} \
      ~{if defined(ts) then ("--ts " +  '"' + ts + '"') else ""} \
      ~{if defined(tmv) then ("--tmv " +  '"' + tmv + '"') else ""} \
      ~{if defined(ur) then ("--ur " +  '"' + ur + '"') else ""} \
      ~{if defined(is) then ("--is " +  '"' + is + '"') else ""} \
      ~{if defined(i_bam) then ("--ibam " +  '"' + i_bam + '"') else ""} \
      ~{if defined(i_bai) then ("--ibai " +  '"' + i_bai + '"') else ""} \
      ~{if defined(fis) then ("--fis " +  '"' + fis + '"') else ""} \
      ~{if defined(nim) then ("--nim " +  '"' + nim + '"') else ""} \
      ~{if (up_e) then "--upe" else ""} \
      ~{if defined(mib_r) then ("--mibr " +  '"' + mib_r + '"') else ""} \
      ~{if defined(mib_w) then ("--mibw " +  '"' + mib_w + '"') else ""} \
      ~{if defined(gone_km_in) then ("--g1kmin " +  '"' + gone_km_in + '"') else ""} \
      ~{if defined(gone_kmax) then ("--g1kmax " +  '"' + gone_kmax + '"') else ""} \
      ~{if defined(g_two_km_in) then ("--g2kmin " +  '"' + g_two_km_in + '"') else ""} \
      ~{if defined(g_two_kmax) then ("--g2kmax " +  '"' + g_two_kmax + '"') else ""} \
      ~{if (fk) then "--fk" else ""} \
      ~{if defined(mkn) then ("--mkn " +  '"' + mkn + '"') else ""} \
      ~{if defined(bone_p) then ("--b1p " +  '"' + bone_p + '"') else ""} \
      ~{if defined(btw_op) then ("--b2p " +  '"' + btw_op + '"') else ""} \
      ~{if defined(mtp) then ("--mtp " +  '"' + mtp + '"') else ""} \
      ~{if defined(m_kde) then ("--mkde " +  '"' + m_kde + '"') else ""} \
      ~{if defined(ntp) then ("--ntp " +  '"' + ntp + '"') else ""} \
      ~{if defined(ntp_two) then ("--ntp2 " +  '"' + ntp_two + '"') else ""} \
      ~{if (a_ntp) then "--antp" else ""} \
      ~{if defined(pat) then ("--pat " +  '"' + pat + '"') else ""} \
      ~{if (epal) then "--epal" else ""} \
      ~{if (epa_a) then "--epaa" else ""} \
      ~{if (e_ptl) then "--eptl" else ""} \
      ~{if (epta) then "--epta" else ""} \
      ~{if defined(m_rtf) then ("--mrtf " +  '"' + m_rtf + '"') else ""} \
      ~{if defined(mtc) then ("--mtc " +  '"' + mtc + '"') else ""} \
      ~{if defined(mtc_two) then ("--mtc2 " +  '"' + mtc_two + '"') else ""} \
      ~{if defined(pet) then ("--pet " +  '"' + pet + '"') else ""} \
      ~{if defined(nt) then ("--nt " +  '"' + nt + '"') else ""} \
      ~{if defined(nta) then ("--nta " +  '"' + nta + '"') else ""} \
      ~{if (oa) then "--oa" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (very_verbose) then "--very-verbose" else ""}
  >>>
  parameter_meta {
    in: "Target bam files. Valid filetype is: .bam."
    bai: "Target bam index files. Valid filetype is: .bai."
    genome: "Genome reference file. Valid filetypes are: .fa, .fasta, .fa.gz, and\\n.fasta.gz."
    out: "Output file to write crosslink sites. Valid filetype is: .bed."
    or: "Output file to write binding regions. Valid filetype is: .bed."
    par: "Output file to write learned parameters."
    ctr: "Assign crosslink sites to read start positions. Note: depends on RT\\nenzyme, buffer conditions and likely on protein. Default: assign\\ncrosslink sites to positions upstream of read starts."
    st: "Scoring scheme. Default: 0 -> score_UC (log posterior probability\\nratio of most likely and second most likely state). In range [0..3]."
    inter: "Genomic chromosomes to learn HMM parameters, e.g. 'chr1;chr2;chr3'.\\nContigs have to be in the same order as in BAM file. Useful to\\nreduce runtime and memory consumption. Default: all contigs from\\nreference file are used (useful when applying to transcript-wise\\nalignments or poor data)."
    chr: "Contigs to apply HMM, e.g. 'chr1;chr2;chr3;'. Contigs have to be in\\nthe same order as in BAM file."
    bc: "Flag to set parameters according to binding characteristics of\\nprotein: see description in section below. In range [0..1]."
    bdw: "Bandwidth for kernel density estimation used to access enrichment.\\nNOTE: Increasing the bandwidth increases runtime and memory\\nconsumption. Default: 50. In range [1..500]."
    bd_wn: "Bandwidth for kernel density estimation used to estimate n for\\nbinomial distributions. For proteins that are rather sliding along\\nthe RNA or showing long crosslink clusters this should be increased,\\ne.g. to 100 (should be <= 4*bdw). Default: same as bdw. In range\\n[1..500]."
    dm: "Distance used to merge individual crosslink sites to binding\\nregions. Default: 8"
    ld: "Use higher precision to store emission probabilities, state poster\\nposterior probabilities etc. (i.e. long double). Should not be\\nnecessary anymore, due to computations in log-space. Note: increases\\nmemory consumption. Default: double."
    ts: "Size of look-up table for log-sum-exp values. Default: 600000"
    tmv: "Minimum value in look-up table for log-sum-exp values. Default:\\n-2000"
    ur: "Flag to define which read should be selected for the analysis:\\n1->R1, 2->R2. Note: PureCLIP uses read starts corresponding to 3'\\ncDNA ends. Thus if providing paired-end data, only the corresponding\\nread should be selected (e.g. eCLIP->R2, iCLIP->R1). If applicable,\\nused for input BAM file as well. Default: uses read starts of all\\nprovided reads assuming single-end or pre-filtered data. In range\\n[1..2]."
    is: "Covariates file: position-wise values, e.g. smoothed reads start\\ncounts (KDEs) from input data. Valid filetype is: .bed."
    i_bam: "File containing mapped reads from control experiment, e.g. eCLIP\\ninput. Valid filetype is: .bam."
    i_bai: "File containing BAM index corresponding to mapped reads from control\\nexperiment Valid filetype is: .bai."
    fis: "Fimo input motif score covariates file. Valid filetype is: .bed."
    nim: "Max. motif ID to use. Default: Only covariates with motif ID 1 are\\nused."
    up_e: "Use (n dependent) pseudo emission probabilities for crosslink state."
    mib_r: "Maximum number of iterations within BRENT algorithm. In range\\n[1..1000]."
    mib_w: "Maximum number of iterations within Baum-Welch algorithm. In range\\n[0..500]."
    gone_km_in: "Minimum shape k of 'non-enriched' gamma distribution (g1.k). In\\nrange [1.5..inf]."
    gone_kmax: "Maximum shape k of 'non-enriched' gamma distribution (g1.k)."
    g_two_km_in: "Minimum shape k of 'enriched' gamma distribution (g2.k)."
    g_two_kmax: "Maximum shape k of 'enriched' gamma distribution (g2.k)."
    fk: "When incorporating input signal, do not constrain 'non-enriched'\\nshape parameter k <= 'enriched' gamma parameter k."
    mkn: "Max. k/N ratio (read start sites/N) used to learn truncation\\nprobabilities for 'non-crosslink' and 'crosslink' emission\\nprobabilities (high ratios might originate from mapping artifacts\\nthat can disturb parameter learning). Default: 1.0 In range\\n[0.5..1.5]."
    bone_p: "Initial value for binomial probability parameter of 'non-crosslink'\\nstate. Default: 0.01."
    btw_op: "Initial value for binomial probability parameter of 'crosslink'\\nstate. Default: 0.15."
    mtp: "Min. transition probability from state '2' to '3' (helpful for poor\\ndata, where no clear distinction between 'enriched' and\\n'non-enriched' is possible). Default: 0.0001."
    m_kde: "Minimum KDE value used for fitting left-truncated gamma\\ndistributions. Default: corresponding to singleton read start."
    ntp: "Only sites with n >= ntp are used to learn binomial probability\\nparameters (bin1.p, bin2.p). Default: 10"
    ntp_two: "Only sites with n >= ntp2 are used to learn probability of\\ntransition from state '2' to '2' or '3'. Useful for data with low\\ntruncation rate at crosslink sites or in general high fraction of\\nnon-coinciding read starts. Default: 0"
    a_ntp: "Automatically choose n threshold (-ntp, -ntp2) to estimate\\nparameters linked to crosslink states based on expected read start\\ncount at crosslink sites."
    pat: "Length threshold for internal poly-X stretches to get excluded."
    epal: "Exclude intervals containing poly-A stretches from learning."
    epa_a: "Exclude intervals containing poly-A stretches from analysis."
    e_ptl: "Exclude intervals containing poly-U stretches from learning."
    epta: "Exclude intervals containing poly-U stretches from analysis."
    m_rtf: "Fit gamma shape k only for positions with min. covariate value."
    mtc: "Maximum number of read starts at one position used for learning. For\\nsites with counts above threshold the whole covered regions will be\\nignored for learning! Default: 500. In range [50..50000]."
    mtc_two: "Maximum number of read starts at one position stored. For sites with\\ncounts above threshold the count will be truncated. Influences k and\\nn. Default: 65000. In range [5000..65000]."
    pet: "Prior enrichment threshold: a KDE threshold corresponding to 7 read\\nstart counts at one position will be used for initial classification\\nof 'non-enriched' and 'enriched' site. Default: 7 In range [2..50]."
    nt: "Number of threads used for learning."
    nta: "Number of threads used for applying learned parameters. Increases\\nmemory usage, if greater than number of chromosomes used for\\nlearning, since HMM will be build for multiple chromosomes in\\nparallel. Default: min(nt, no. of chromosomes/transcripts used for\\nlearning)."
    oa: "Outputs all sites with at least one read start in extended output\\nformat."
    quiet: "Set verbosity to a minimum."
    verbose: "Enable verbose output."
    very_verbose: "Enable very verbose output."
    zero_dot_one_dot: "In case of different binding characteristics adjust parameters -bdw,"
    clusters: "pureclip -i target.bam -bai target.bai -g ref.fasta -o called_crosslinksites.bed -nt 10  -iv '1;2;3;' -bc 1 -b2p 0.03 "
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_or = "${in_or}"
    File out_par = "${in_par}"
  }
}