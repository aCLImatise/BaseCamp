version 1.0

task Angsd {
  input {
    Boolean? n_threads
    Boolean? n_queue_size
    Boolean? how_often
    Boolean? gl
    Boolean? do_counts
    Boolean? do_asso
    Boolean? do_maf
    Boolean? do_error
    Boolean? do_anc_error
    Boolean? h_we_pval
    Boolean? do_geno
    Boolean? do_fast_a
    Boolean? do_abba_baba
    Boolean? sites
    Boolean? do_saf
    Boolean? do_het_plas
    Boolean? bam
    Boolean? do_major_minor
    Boolean? ref
    Boolean? do_snp_stat
    Boolean? cig_stat
    Boolean? do_bcf
  }
  command <<<
    angsd \
      ~{if (n_threads) then "-nThreads" else ""} \
      ~{if (n_queue_size) then "-nQueueSize" else ""} \
      ~{if (how_often) then "-howOften" else ""} \
      ~{if (gl) then "-GL" else ""} \
      ~{if (do_counts) then "-doCounts" else ""} \
      ~{if (do_asso) then "-doAsso" else ""} \
      ~{if (do_maf) then "-doMaf" else ""} \
      ~{if (do_error) then "-doError" else ""} \
      ~{if (do_anc_error) then "-doAncError" else ""} \
      ~{if (h_we_pval) then "-HWE_pval" else ""} \
      ~{if (do_geno) then "-doGeno" else ""} \
      ~{if (do_fast_a) then "-doFasta" else ""} \
      ~{if (do_abba_baba) then "-doAbbababa" else ""} \
      ~{if (sites) then "-sites" else ""} \
      ~{if (do_saf) then "-doSaf" else ""} \
      ~{if (do_het_plas) then "-doHetPlas" else ""} \
      ~{if (bam) then "-bam" else ""} \
      ~{if (do_major_minor) then "-doMajorMinor" else ""} \
      ~{if (ref) then "-ref" else ""} \
      ~{if (do_snp_stat) then "-doSNPstat" else ""} \
      ~{if (cig_stat) then "-cigstat" else ""} \
      ~{if (do_bcf) then "-doBcf" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n_threads: "1       Number of threads to use"
    n_queue_size: "Maximum number of queud elements"
    how_often: "100     How often should the program show progress"
    gl: "Estimate genotype likelihoods"
    do_counts: "Calculate various counts statistics"
    do_asso: "Perform association study"
    do_maf: "Estimate allele frequencies"
    do_error: "Estimate the type specific error rates"
    do_anc_error: "Estimate the errorrate based on perfect fastas"
    h_we_pval: "Est inbreedning per site or use as filter"
    do_geno: "Call genotypes"
    do_fast_a: "Generate a fasta for a BAM file"
    do_abba_baba: "Perform an ABBA-BABA test"
    sites: "Analyse specific sites (can force major/minor)"
    do_saf: "Estimate the SFS and/or neutrality tests genotype calling"
    do_het_plas: "Estimate hetplasmy by calculating a pooled haploid frequency"
    bam: "Options relating to bam reading"
    do_major_minor: "Infer the major/minor using different approaches"
    ref: "Read reference or ancestral genome"
    do_snp_stat: "Calculate various SNPstat"
    cig_stat: "Printout CIGAR stat across readlength"
    do_bcf: "Wrapper around -dopost -domajorminor -dofreq -gl -dovcf docounts"
  }
  output {
    File out_stdout = stdout()
  }
}