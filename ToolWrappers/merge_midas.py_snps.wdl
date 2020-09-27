version 1.0

task MergeMidaspySnps {
  input {
    Int? threads
    String? input_sample_output
    File? specify_one_followinglist
    File? path_reference_default
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
    merge_midas_py snps \
      ~{outdir} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(input_sample_output) then ("-i " +  '"' + input_sample_output + '"') else ""} \
      ~{if defined(specify_one_followinglist) then ("-t " +  '"' + specify_one_followinglist + '"') else ""} \
      ~{if defined(path_reference_default) then ("-d " +  '"' + path_reference_default + '"') else ""} \
      ~{if (core_snps) then "--core_snps" else ""} \
      ~{if (core_sites) then "--core_sites" else ""} \
      ~{if (all_snps) then "--all_snps" else ""} \
      ~{if (all_sites) then "--all_sites" else ""} \
      ~{if defined(min_samples) then ("--min_samples " +  '"' + min_samples + '"') else ""} \
      ~{if defined(species_id) then ("--species_id " +  '"' + species_id + '"') else ""} \
      ~{if defined(max_species) then ("--max_species " +  '"' + max_species + '"') else ""} \
      ~{if defined(sample_depth) then ("--sample_depth " +  '"' + sample_depth + '"') else ""} \
      ~{if defined(fract_cov) then ("--fract_cov " +  '"' + fract_cov + '"') else ""} \
      ~{if defined(max_samples) then ("--max_samples " +  '"' + max_samples + '"') else ""} \
      ~{if (all_samples) then "--all_samples" else ""} \
      ~{if (snp_type) then "--snp_type" else ""} \
      ~{if defined(allele_freq) then ("--allele_freq " +  '"' + allele_freq + '"') else ""} \
      ~{if defined(site_depth) then ("--site_depth " +  '"' + site_depth + '"') else ""} \
      ~{if defined(site_ratio) then ("--site_ratio " +  '"' + site_ratio + '"') else ""} \
      ~{if defined(site_prev) then ("--site_prev " +  '"' + site_prev + '"') else ""} \
      ~{if defined(max_sites) then ("--max_sites " +  '"' + max_sites + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of CPUs to use (1)"
    input_sample_output: "Input to sample directories output by run_midas.py; see '-t' for details"
    specify_one_followinglist: "Specify one of the following:\\nlist: -i is a comma-separated list (ex: /samples/sample_1,/samples/sample_2)\\ndir: -i is a directory containing all samples (ex: /samples)\\nfile: -i is a file of paths to samples (ex: /sample_paths.txt)"
    path_reference_default: "Path to reference database\\nBy default, the MIDAS_DB environmental variable is used"
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
    snp_type: "[ ...]    Specify one or more of the following:\\nmono: keep sites with 1 allele > ALLELE_FREQ\\nbi: keep sites with 2 alleles > ALLELE_FREQ (default)\\ntri: keep sites with 3 alleles > ALLELE_FREQ\\nquad: keep sites with 4 alleles > ALLELE_FREQ\\nany: keep sites regardless of observed alleles"
    allele_freq: "Minimum frequency for calling an allele present (0.01)\\nValues > 0.0 and < 0.5 are accepted.\\nEx: --snp_type=bi --allele_freq=0.01 keeps bi-allelic SNPs with a minimum frequency of 1%"
    site_depth: "Minimum number of reads mapped to genomic site (1)\\nUsed in combination with --site_prev to determine if site is in core-genome"
    site_ratio: "Maximum ratio of site depth to genome depth (2.0)\\nThis filter helps to eliminate genomic sites with abnormally high read depth"
    site_prev: "Minimum fraction of sample where genomic site is >= SITE_DEPTH and <= SITE_RATIO (0.95)\\nA high value selects for sites in the core-genome (i.e. present in nearly all strains).\\nA low value includes sites in variable regions and/or with abnormally high read depth"
    max_sites: "Maximum number of sites to include in output (use all). Useful for quick tests"
    outdir: "Directory for output files. \\nA subdirectory will be created for each species_id"
  }
  output {
    File out_stdout = stdout()
  }
}