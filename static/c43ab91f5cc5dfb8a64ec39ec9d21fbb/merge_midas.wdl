version 1.0

task MergeMidas.pySnps {
  input {
    Int? threads
    String? input_sample_output
    String? specify_one_following
    String? path_reference_database
    Boolean? core_snps
    Boolean? core_sites
    Boolean? all_snps
    Boolean? all_sites
    Int? min_samples
    String? species_id
    Int? max_species
    Float? sample_depth
    Float? fract_cov
    Int? max_samples
    Boolean? all_samples
    Boolean? snp_type
    Float? allele_freq
    Int? site_depth
    Float? site_ratio
    Float? site_prev
    Int? max_sites
    String outdir
  }
  command <<<
    merge_midas.py snps \
      ~{outdir} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(input_sample_output) then ("-i " +  '"' + input_sample_output + '"') else ""} \
      ~{if defined(specify_one_following) then ("-t " +  '"' + specify_one_following + '"') else ""} \
      ~{if defined(path_reference_database) then ("-d " +  '"' + path_reference_database + '"') else ""} \
      ~{true="--core_snps" false="" core_snps} \
      ~{true="--core_sites" false="" core_sites} \
      ~{true="--all_snps" false="" all_snps} \
      ~{true="--all_sites" false="" all_sites} \
      ~{if defined(min_samples) then ("--min_samples " +  '"' + min_samples + '"') else ""} \
      ~{if defined(species_id) then ("--species_id " +  '"' + species_id + '"') else ""} \
      ~{if defined(max_species) then ("--max_species " +  '"' + max_species + '"') else ""} \
      ~{if defined(sample_depth) then ("--sample_depth " +  '"' + sample_depth + '"') else ""} \
      ~{if defined(fract_cov) then ("--fract_cov " +  '"' + fract_cov + '"') else ""} \
      ~{if defined(max_samples) then ("--max_samples " +  '"' + max_samples + '"') else ""} \
      ~{true="--all_samples" false="" all_samples} \
      ~{true="--snp_type" false="" snp_type} \
      ~{if defined(allele_freq) then ("--allele_freq " +  '"' + allele_freq + '"') else ""} \
      ~{if defined(site_depth) then ("--site_depth " +  '"' + site_depth + '"') else ""} \
      ~{if defined(site_ratio) then ("--site_ratio " +  '"' + site_ratio + '"') else ""} \
      ~{if defined(site_prev) then ("--site_prev " +  '"' + site_prev + '"') else ""} \
      ~{if defined(max_sites) then ("--max_sites " +  '"' + max_sites + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of CPUs to use (1)"
    input_sample_output: "Input to sample directories output by run_midas.py; see '-t' for details"
    specify_one_following: "Specify one of the following: list: -i is a comma-separated list (ex: /samples/sample_1,/samples/sample_2) dir: -i is a directory containing all samples (ex: /samples) file: -i is a file of paths to samples (ex: /sample_paths.txt)"
    path_reference_database: "Path to reference database By default, the MIDAS_DB environmental variable is used"
    core_snps: "Same as: --snp_type bi --site_depth 1 --site_ratio 2.0 --site_prev 0.95 (default)"
    core_sites: "Same as: --snp_type any --site_depth 1 --site_ratio 2.0 --site_prev 0.95"
    all_snps: "Same as: --snp_type bi --site_prev 0.0"
    all_sites: "Same as: --snp_type any --site_prev 0.0"
    min_samples: "All species with >= MIN_SAMPLES (1)"
    species_id: "Comma-separated list of species ids"
    max_species: "Maximum number of species to call SNPs for (all with >= 1 sample)"
    sample_depth: "Minimum average read depth per sample (5.0)"
    fract_cov: "Fraction of reference sites covered by at least 1 read (0.4)"
    max_samples: "Maximum number of samples to process. useful for quick tests (use all)"
    all_samples: "Include all samples in output"
    snp_type: "[ ...]    Specify one or more of the following: mono: keep sites with 1 allele > ALLELE_FREQ bi: keep sites with 2 alleles > ALLELE_FREQ (default) tri: keep sites with 3 alleles > ALLELE_FREQ quad: keep sites with 4 alleles > ALLELE_FREQ any: keep sites regardless of observed alleles"
    allele_freq: "Minimum frequency for calling an allele present (0.01) Values > 0.0 and < 0.5 are accepted. Ex: --snp_type=bi --allele_freq=0.01 keeps bi-allelic SNPs with a minimum frequency of 1%"
    site_depth: "Minimum number of reads mapped to genomic site (1) Used in combination with --site_prev to determine if site is in core-genome"
    site_ratio: "Maximum ratio of site depth to genome depth (2.0) This filter helps to eliminate genomic sites with abnormally high read depth"
    site_prev: "Minimum fraction of sample where genomic site is >= SITE_DEPTH and <= SITE_RATIO (0.95) A high value selects for sites in the core-genome (i.e. present in nearly all strains). A low value includes sites in variable regions and/or with abnormally high read depth"
    max_sites: "Maximum number of sites to include in output (use all). Useful for quick tests "
    outdir: "Directory for output files.  A subdirectory will be created for each species_id"
  }
}