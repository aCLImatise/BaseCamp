version 1.0

task CnvFacetsR {
  input {
    String? out
    File? snp_tumour
    File? snp_normal
    File? snp_vcf
    Int? snp_mapq
    Int? snp_baq
    Boolean? snp_count_orphans
    Int? snp_nprocs
    File? pile_up
    Int? depth
    File? targets
    Int? cval
    Int? n_bhd_snp
    File? annotation
    String? g_build
    Boolean? unmatched
    Boolean? no_cov_plot
    Int? rnd_seed
  }
  command <<<
    cnv_facets_R \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(snp_tumour) then ("--snp-tumour " +  '"' + snp_tumour + '"') else ""} \
      ~{if defined(snp_normal) then ("--snp-normal " +  '"' + snp_normal + '"') else ""} \
      ~{if defined(snp_vcf) then ("--snp-vcf " +  '"' + snp_vcf + '"') else ""} \
      ~{if defined(snp_mapq) then ("--snp-mapq " +  '"' + snp_mapq + '"') else ""} \
      ~{if defined(snp_baq) then ("--snp-baq " +  '"' + snp_baq + '"') else ""} \
      ~{if (snp_count_orphans) then "--snp-count-orphans" else ""} \
      ~{if defined(snp_nprocs) then ("--snp-nprocs " +  '"' + snp_nprocs + '"') else ""} \
      ~{if defined(pile_up) then ("--pileup " +  '"' + pile_up + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(cval) then ("--cval " +  '"' + cval + '"') else ""} \
      ~{if defined(n_bhd_snp) then ("--nbhd-snp " +  '"' + n_bhd_snp + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(g_build) then ("--gbuild " +  '"' + g_build + '"') else ""} \
      ~{if (unmatched) then "--unmatched" else ""} \
      ~{if (no_cov_plot) then "--no-cov-plot" else ""} \
      ~{if defined(rnd_seed) then ("--rnd-seed " +  '"' + rnd_seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "Output prefix for the output files"
    snp_tumour: "BAM file for tumour sample"
    snp_normal: "BAM file for normal sample"
    snp_vcf: "VCF file of SNPs where pileup is to be computed"
    snp_mapq: "Sets the minimum threshold for mapping quality. Default 5"
    snp_baq: "Sets the minimum threshold for base quality. Default 10"
    snp_count_orphans: "Do not discard anomalous read pairs"
    snp_nprocs: "Number of parallel processes to run to prepare the read pileup file.\\nEach chromsome is assigned to a process. Default 1"
    pile_up: "Pileup for matched normal (first sample) and tumour\\n(second sample). Not needed if using BAM input. This file\\nis the <prefix>.cvs.gz output of of a previous run of cnv_facet.R"
    depth: "DEPTH, -d DEPTH DEPTH\\nMinimum and maximum depth in normal sample for a position\\nto be considered. Default 25 4000"
    targets: "BED file of target regions to scan. It may be the target regions\\nfrom WEX or panel sequencing protocols. It is not required, even\\nfor targeted sequencing, but it may improve the results"
    cval: "CVAL, -cv CVAL CVAL\\nCritical values for segmentation in pre-processing and\\nprocessing. Larger values reduce segmentation. [25 150] is\\nfacets default based on exome data. For whole genome consider\\nincreasing to [25 400] and for targeted sequencing consider\\nreducing them. Default 25 150"
    n_bhd_snp: "If an interval of size nbhd-snp contains more than one SNP,\\nsample a random one.  This sampling reduces the SNP serial\\ncorrelation. This value should be similar to the median insert\\nsize of the libraries. If \\\"auto\\\" and if using paired end BAM\\ninput, use the estimated insert size from the normal bam file.\\nOtherwise use 250. Default auto"
    annotation: "Optional annotation file in BED format where the 4th column\\ncontains the feature name (e.g. gene name). CNVs will be\\nannotated with an additional INFO/TAG reporting all the\\noveralapping features"
    g_build: "String indicating the reference genome build. Default hg38."
    unmatched: "Normal sample is unmatched. If set, heterozygote SNPs are\\ncalled using tumor reads only and logOR calculations are different"
    no_cov_plot: "Do not produce coverage plots (they can be memory intensive).\\nOther plots remain unaffected"
    rnd_seed: "Seed for random number generator. Default: The name of the input file"
  }
  output {
    File out_stdout = stdout()
  }
}