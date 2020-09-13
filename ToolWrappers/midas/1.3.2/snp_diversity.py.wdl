version 1.0

task SnpDiversitypy {
  input {
    File? out
    String? genomic_type
    String? sample_type
    Boolean? weight_by_depth
    Int? rand_reads
    Boolean? replace_reads
    Int? rand_samples
    Float? rand_sites
    Float? snp_maf
    Boolean? consensus
    Float? sample_depth
    Float? sample_cov
    Int? max_samples
    String? keep_samples
    String? exclude_samples
    File? site_list
    Int? site_depth
    Float? site_prev
    Float? site_maf
    Float? site_ratio
    Float? allele_support
    String? locus_type
    String? site_type
    Int? max_sites
    File path
  }
  command <<<
    snp_diversity_py \
      ~{path} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(genomic_type) then ("--genomic_type " +  '"' + genomic_type + '"') else ""} \
      ~{if defined(sample_type) then ("--sample_type " +  '"' + sample_type + '"') else ""} \
      ~{if (weight_by_depth) then "--weight_by_depth" else ""} \
      ~{if defined(rand_reads) then ("--rand_reads " +  '"' + rand_reads + '"') else ""} \
      ~{if (replace_reads) then "--replace_reads" else ""} \
      ~{if defined(rand_samples) then ("--rand_samples " +  '"' + rand_samples + '"') else ""} \
      ~{if defined(rand_sites) then ("--rand_sites " +  '"' + rand_sites + '"') else ""} \
      ~{if defined(snp_maf) then ("--snp_maf " +  '"' + snp_maf + '"') else ""} \
      ~{if (consensus) then "--consensus" else ""} \
      ~{if defined(sample_depth) then ("--sample_depth " +  '"' + sample_depth + '"') else ""} \
      ~{if defined(sample_cov) then ("--sample_cov " +  '"' + sample_cov + '"') else ""} \
      ~{if defined(max_samples) then ("--max_samples " +  '"' + max_samples + '"') else ""} \
      ~{if defined(keep_samples) then ("--keep_samples " +  '"' + keep_samples + '"') else ""} \
      ~{if defined(exclude_samples) then ("--exclude_samples " +  '"' + exclude_samples + '"') else ""} \
      ~{if defined(site_list) then ("--site_list " +  '"' + site_list + '"') else ""} \
      ~{if defined(site_depth) then ("--site_depth " +  '"' + site_depth + '"') else ""} \
      ~{if defined(site_prev) then ("--site_prev " +  '"' + site_prev + '"') else ""} \
      ~{if defined(site_maf) then ("--site_maf " +  '"' + site_maf + '"') else ""} \
      ~{if defined(site_ratio) then ("--site_ratio " +  '"' + site_ratio + '"') else ""} \
      ~{if defined(allele_support) then ("--allele_support " +  '"' + allele_support + '"') else ""} \
      ~{if defined(locus_type) then ("--locus_type " +  '"' + locus_type + '"') else ""} \
      ~{if defined(site_type) then ("--site_type " +  '"' + site_type + '"') else ""} \
      ~{if defined(max_sites) then ("--max_sites " +  '"' + max_sites + '"') else ""}
  >>>
  parameter_meta {
    out: "path to output file (/dev/stdout)"
    genomic_type: "compute diversity for individual genes or genome-wide (genome-wide)"
    sample_type: "compute diversity for individual samples or for pooled reads across samples (per-sample)"
    weight_by_depth: "weight data from samples by sequencing depth when --sample_type=pooled-samples"
    rand_reads: "randomly select N reads from each sample for each genomic site"
    replace_reads: "reads drawn with replacement"
    rand_samples: "randomly select N samples from each genomic site"
    rand_sites: "randomly select X proportion of high-quality genomic sites"
    snp_maf: "minor allele frequency cutoff for determining if a site is a SNP (0.01)"
    consensus: "call consensus alleles prior to calling SNPs"
    sample_depth: "minimum average read depth per sample (0.0)"
    sample_cov: "fraction of reference sites covered by at least 1 read (0.0)"
    max_samples: "maximum number of samples to process.\\nuseful for quick tests (use all)"
    keep_samples: "comma-separated list of samples to use for computing diversity metrics.\\nsamples will still be subject to other filters"
    exclude_samples: "comma-separated list of samples to exclude from computing diversity metrics.\\nsamples will still be subject to other filters"
    site_list: "path to file containing newline-delimited list of genomic sites to include.\\nother filters will still apply"
    site_depth: "minimum number of mapped reads per site (2)"
    site_prev: "site has at least <site_depth> coverage in at least <site_prev> proportion of samples (0.0)\\na value of 1.0 will select sites that have sufficent coverage in all samples.\\na value of 0.0 will select all sites, including those with low coverage in many samples\\nNAs recorded for included sites with less than <site_depth> in a sample"
    site_maf: "minimum average-minor-allele-frequency of site across samples (0.0)\\nsetting this above zero (e.g. 0.01, 0.02, 0.05) will only retain variable sites\\nby default invariant sites are also retained."
    site_ratio: "maximum ratio of site-depth to mean-genome-depth (None)\\na value of 10 will filter genomic sites with 10x greater coverage than the genomic background"
    allele_support: "minimum fraction of reads supporting consensus allele (0.50)"
    locus_type: "use genomic sites that intersect: 'CDS': coding genes, 'RNA': rRNA and tRNA genes, 'IGS': intergenic regions"
    site_type: "if locus_type == 'CDS', use genomic sites with specified degeneracy: 4D indicates synonymous and 1D non-synonymous sites"
    max_sites: "maximum number of sites to include in output (use all)\\nuseful for quick tests"
    path: "path to output from `merge_midas.py snps` for one species\\ndirectory should be named according to a species_id and contains files 'snps_*.txt')"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}