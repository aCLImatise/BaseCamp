version 1.0

task CallConsensus.py {
  input {
    File? out
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
    call_consensus.py \
      ~{path} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
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
    out: "path to output file"
    sample_depth: "minimum average read depth per sample (0.0)"
    sample_cov: "fraction of reference sites covered by at least 1 read (0.0)"
    max_samples: "maximum number of samples to process. useful for quick tests (use all)"
    keep_samples: "comma-separated list of samples to include samples will still be subject to other filters"
    exclude_samples: "comma-separated list of samples to exclude. samples will still be subject to other filters"
    site_list: "path to list of sites to include; other filters still apply"
    site_depth: "minimum number of mapped reads per site (2)"
    site_prev: "site has at least <site_depth> coverage in at least <site_prev> proportion of samples (0.0) a value of 1.0 will select sites that have sufficent coverage in all samples. a value of 0.0 will select all sites, including those with low coverage in many samples  NAs recorded for included sites with less than <site_depth> in a sample "
    site_maf: "minimum average-minor-allele-frequency of site across samples (0.0) setting this above zero (e.g. 0.01, 0.02, 0.05) will only retain variable sites by default invariant sites are also retained."
    site_ratio: "maximum ratio of site-depth to mean-genome-depth (None) a value of 10 will filter genomic sites with 10x greater coverage than the genomic background"
    allele_support: "minimum fraction of reads supporting consensus allele (0.5)"
    locus_type: "use genomic sites that intersect: 'CDS': coding genes, 'RNA': rRNA and tRNA genes, 'IGS': intergenic regions"
    site_type: "if locus_type == 'CDS', use genomic sites with specified degeneracy: 4D indicates synonymous and 1D non-synonymous sites"
    max_sites: "maximum number of sites to include in output (use all) useful for quick tests"
    path: "path to output from `merge_midas.py snps` for one species directory should be named according to a species_id and contains files 'snps_*.txt')"
  }
}