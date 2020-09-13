version 1.0

task Longshot {
  input {
    Boolean? auto_max_cov
    Boolean? stable_alignment
    Directory? force_overwrite
    Boolean? max_alignment
    Boolean? no_haps
    File? bam
    File? ref
    File? out
    Int? region
    String? potential_variants
    File? out_bam
    Int? min_cov
    Int? max_cov
    Int? min_mapq
    Float? min_allele_qual
    Float? hap_assignment_qual
    Float? potential_snv_cut_off
    Int? min_alt_count
    Float? min_alt_frac
    Float? hap_converge_delta
    Int? anchor_length
    Int? max_sn_vs
    Int? max_window
    Int? max_cigar_in_del
    Int? band_width
    Int? density_params
    String? sample_id
    Float? hom_snv_rate
    Float? het_snv_rate
    Float? ts_tv_ratio
    Float? strand_bias_p_value_cut_off
    Directory? variant_debug_dir
  }
  command <<<
    longshot \
      ~{if (auto_max_cov) then "--auto_max_cov" else ""} \
      ~{if (stable_alignment) then "--stable_alignment" else ""} \
      ~{if (force_overwrite) then "--force_overwrite" else ""} \
      ~{if (max_alignment) then "--max_alignment" else ""} \
      ~{if (no_haps) then "--no_haps" else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(potential_variants) then ("--potential_variants " +  '"' + potential_variants + '"') else ""} \
      ~{if defined(out_bam) then ("--out_bam " +  '"' + out_bam + '"') else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(max_cov) then ("--max_cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_allele_qual) then ("--min_allele_qual " +  '"' + min_allele_qual + '"') else ""} \
      ~{if defined(hap_assignment_qual) then ("--hap_assignment_qual " +  '"' + hap_assignment_qual + '"') else ""} \
      ~{if defined(potential_snv_cut_off) then ("--potential_snv_cutoff " +  '"' + potential_snv_cut_off + '"') else ""} \
      ~{if defined(min_alt_count) then ("--min_alt_count " +  '"' + min_alt_count + '"') else ""} \
      ~{if defined(min_alt_frac) then ("--min_alt_frac " +  '"' + min_alt_frac + '"') else ""} \
      ~{if defined(hap_converge_delta) then ("--hap_converge_delta " +  '"' + hap_converge_delta + '"') else ""} \
      ~{if defined(anchor_length) then ("--anchor_length " +  '"' + anchor_length + '"') else ""} \
      ~{if defined(max_sn_vs) then ("--max_snvs " +  '"' + max_sn_vs + '"') else ""} \
      ~{if defined(max_window) then ("--max_window " +  '"' + max_window + '"') else ""} \
      ~{if defined(max_cigar_in_del) then ("--max_cigar_indel " +  '"' + max_cigar_in_del + '"') else ""} \
      ~{if defined(band_width) then ("--band_width " +  '"' + band_width + '"') else ""} \
      ~{if defined(density_params) then ("--density_params " +  '"' + density_params + '"') else ""} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(hom_snv_rate) then ("--hom_snv_rate " +  '"' + hom_snv_rate + '"') else ""} \
      ~{if defined(het_snv_rate) then ("--het_snv_rate " +  '"' + het_snv_rate + '"') else ""} \
      ~{if defined(ts_tv_ratio) then ("--ts_tv_ratio " +  '"' + ts_tv_ratio + '"') else ""} \
      ~{if defined(strand_bias_p_value_cut_off) then ("--strand_bias_pvalue_cutoff " +  '"' + strand_bias_p_value_cut_off + '"') else ""} \
      ~{if defined(variant_debug_dir) then ("--variant_debug_dir " +  '"' + variant_debug_dir + '"') else ""}
  >>>
  parameter_meta {
    auto_max_cov: "Automatically calculate mean coverage for region and set max coverage to mean_coverage +\\n5*sqrt(mean_coverage). (SLOWER)"
    stable_alignment: "Use numerically-stable (logspace) pair HMM forward algorithm. Is significantly slower but\\nmay be more accurate. Tests have shown this not to be necessary for highly error prone\\nreads (PacBio CLR)."
    force_overwrite: "If output files (VCF or variant debug directory) exist, delete and overwrite them."
    max_alignment: "Use max scoring alignment algorithm rather than pair HMM forward algorithm."
    no_haps: "Don't call HapCUT2 to phase variants."
    bam: "sorted, indexed BAM file with error-prone reads"
    ref: "indexed FASTA reference that BAM file is aligned to"
    out: "output VCF file with called variants."
    region: "Region in format <chrom> or <chrom:start-stop> in which to call variants\\n(1-based, inclusive)."
    potential_variants: "Genotype and phase the variants in this VCF instead of using pileup\\nmethod to find variants. NOTES: VCF must be gzipped and tabix indexed or\\ncontain contig information. Use with caution because excessive false\\npotential variants can lead to inaccurate results. Every variant is used\\nand only the allele fields are considered -- Genotypes, filters,\\nqualities etc are ignored. Indel variants will be genotyped but not\\nphased. Triallelic variants and structural variants are currently not\\nsupported."
    out_bam: "Write new bam file with haplotype tags (HP:i:1 and HP:i:2) for reads\\nassigned to each haplotype, any existing HP and PS tags are removed"
    min_cov: "Minimum coverage (of reads passing filters) to consider position as a\\npotential SNV. [default: 6]"
    max_cov: "Maximum coverage (of reads passing filters) to consider position as a\\npotential SNV. [default: 8000]"
    min_mapq: "Minimum mapping quality to use a read. [default: 30]"
    min_allele_qual: "Minimum estimated quality (Phred-scaled) of allele observation on read to\\nuse for genotyping/haplotyping. [default: 7.0]"
    hap_assignment_qual: "Minimum quality (Phred-scaled) of read->haplotype assignment (for read\\nseparation). [default: 20.0]"
    potential_snv_cut_off: "Consider a site as a potential SNV if the original PHRED-scaled QUAL\\nscore for 0/0 genotype is below this amount (a larger value considers\\nmore potential SNV sites). [default: 20.0]"
    min_alt_count: "Require a potential SNV to have at least this many alternate allele\\nobservations. [default: 3]"
    min_alt_frac: "Require a potential SNV to have at least this fraction of alternate\\nallele observations. [default: 0.125]"
    hap_converge_delta: "Terminate the haplotype/genotype iteration when the relative change in\\nlog-likelihood falls below this amount. Setting a larger value results in\\nfaster termination but potentially less accurate results. [default:\\n0.0001]"
    anchor_length: "Length of indel-free anchor sequence on the left and right side of read\\nrealignment window. [default: 6]"
    max_sn_vs: "Cut off variant clusters after this many variants. 2^m haplotypes must be\\naligned against per read for a variant cluster of size m. [default: 3]"
    max_window: "Maximum \\\"padding\\\" bases on either side of variant realignment window\\n[default: 50]"
    max_cigar_in_del: "Throw away a read-variant during allelotyping if there is a CIGAR indel\\n(I/D/N) longer than this amount in its window. [default: 20]"
    band_width: "Minimum width of alignment band. Band will increase in size if sequences\\nare different lengths. [default: 20]"
    density_params: "Parameters to flag a variant as part of a \\\"dense cluster\\\". Format\\n<n>:<l>:<gq>. If there are at least n variants within l base pairs with\\ngenotype quality >=gq, then these variants are flagged as \\\"dn\\\" [default:\\n10:500:50]"
    sample_id: "Specify a sample ID to write to the output VCF [default: SAMPLE]"
    hom_snv_rate: "Specify the homozygous SNV Rate for genotype prior estimation [default:\\n0.0005]"
    het_snv_rate: "Specify the heterozygous SNV Rate for genotype prior estimation [default:\\n0.001]"
    ts_tv_ratio: "Specify the transition/transversion rate for genotype grior estimation\\n[default: 0.5]"
    strand_bias_p_value_cut_off: "Remove a variant if the allele observations are biased toward one strand\\n(forward or reverse) according to Fisher's exact test. Use this cutoff\\nfor the two-tailed P-value. [default: 0.01]"
    variant_debug_dir: "write out current information about variants at each step of algorithm to\\nfiles in this directory\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_force_overwrite = "${in_force_overwrite}"
    File out_out = "${in_out}"
    Directory out_variant_debug_dir = "${in_variant_debug_dir}"
  }
}