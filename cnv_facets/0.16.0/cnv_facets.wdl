version 1.0

task CnvFacets.R {
  input {
    String? out
    String? snp_tumour
    String? snp_normal
    String? snp_vcf
    String? snp_mapq
    String? snp_baq
    Boolean? snp_count_orphans
    String? snp_nprocs
    String? pile_up
    String? depth
    String? targets
    String? cval
    String? n_bhd_snp
    String? annotation
    String? g_build
    Boolean? unmatched
    Boolean? no_cov_plot
    String? rnd_seed
  }
  command <<<
    cnv_facets.R \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(snp_tumour) then ("--snp-tumour " +  '"' + snp_tumour + '"') else ""} \
      ~{if defined(snp_normal) then ("--snp-normal " +  '"' + snp_normal + '"') else ""} \
      ~{if defined(snp_vcf) then ("--snp-vcf " +  '"' + snp_vcf + '"') else ""} \
      ~{if defined(snp_mapq) then ("--snp-mapq " +  '"' + snp_mapq + '"') else ""} \
      ~{if defined(snp_baq) then ("--snp-baq " +  '"' + snp_baq + '"') else ""} \
      ~{true="--snp-count-orphans" false="" snp_count_orphans} \
      ~{if defined(snp_nprocs) then ("--snp-nprocs " +  '"' + snp_nprocs + '"') else ""} \
      ~{if defined(pile_up) then ("--pileup " +  '"' + pile_up + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(cval) then ("--cval " +  '"' + cval + '"') else ""} \
      ~{if defined(n_bhd_snp) then ("--nbhd-snp " +  '"' + n_bhd_snp + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(g_build) then ("--gbuild " +  '"' + g_build + '"') else ""} \
      ~{true="--unmatched" false="" unmatched} \
      ~{true="--no-cov-plot" false="" no_cov_plot} \
      ~{if defined(rnd_seed) then ("--rnd-seed " +  '"' + rnd_seed + '"') else ""}
  >>>
  parameter_meta {
    out: "Output prefix for the output files"
    snp_tumour: "BAM file for tumour sample"
    snp_normal: "BAM file for normal sample"
    snp_vcf: "VCF file of SNPs where pileup is to be computed"
    snp_mapq: "Sets the minimum threshold for mapping quality. Default 5"
    snp_baq: "Sets the minimum threshold for base quality. Default 10"
    snp_count_orphans: "Do not discard anomalous read pairs"
    snp_nprocs: "Number of parallel processes to run to prepare the read pileup file. Each chromsome is assigned to a process. Default 1"
    pile_up: "Pileup for matched normal (first sample) and tumour (second sample). Not needed if using BAM input. This file is the <prefix>.cvs.gz output of of a previous run of cnv_facet.R"
    depth: "DEPTH, -d DEPTH DEPTH Minimum and maximum depth in normal sample for a position to be considered. Default 25 4000"
    targets: "BED file of target regions to scan. It may be the target regions from WEX or panel sequencing protocols. It is not required, even for targeted sequencing, but it may improve the results"
    cval: "CVAL, -cv CVAL CVAL Critical values for segmentation in pre-processing and processing. Larger values reduce segmentation. [25 150] is facets default based on exome data. For whole genome consider increasing to [25 400] and for targeted sequencing consider reducing them. Default 25 150"
    n_bhd_snp: "If an interval of size nbhd-snp contains more than one SNP, sample a random one.  This sampling reduces the SNP serial correlation. This value should be similar to the median insert size of the libraries. If \"auto\" and if using paired end BAM input, use the estimated insert size from the normal bam file. Otherwise use 250. Default auto"
    annotation: "Optional annotation file in BED format where the 4th column contains the feature name (e.g. gene name). CNVs will be annotated with an additional INFO/TAG reporting all the overalapping features"
    g_build: "String indicating the reference genome build. Default hg38."
    unmatched: "Normal sample is unmatched. If set, heterozygote SNPs are called using tumor reads only and logOR calculations are different"
    no_cov_plot: "Do not produce coverage plots (they can be memory intensive). Other plots remain unaffected"
    rnd_seed: "Seed for random number generator. Default: The name of the input file"
  }
}