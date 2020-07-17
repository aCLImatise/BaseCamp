version 1.0

task BayesTyperGenotype {
  input {
    Boolean? arg_variantclustersbin_file
    Boolean? parameterkmersfagz_bayestyper_cluster
    Boolean? arg_samples_file
    Boolean? arg_reference_genome
    Boolean? arg_decoy_sequences
    Boolean? arg_bayestyper_output
    Boolean? compress_outputprefixvcf_using
    Boolean? arg_unix_time
    Boolean? arg_number_threads
    Boolean? arg_chromosome_gender
    String? gibbs_burn_in
    String? gibbs_samples
    String? number_of_gibbs_chains
    String? km_er_subsampling_rate
    String? max_haplotype_variant_km_ers
    Boolean? noise_genotyping
    String? noise_rate_prior
    String? min_genotype_posterior
    String? min_number_of_km_ers
    Boolean? disable_observed_km_ers
  }
  command <<<
    bayesTyper genotype \
      ~{true="-v" false="" arg_variantclustersbin_file} \
      ~{true="-c" false="" parameterkmersfagz_bayestyper_cluster} \
      ~{true="-s" false="" arg_samples_file} \
      ~{true="-g" false="" arg_reference_genome} \
      ~{true="-d" false="" arg_decoy_sequences} \
      ~{true="-o" false="" arg_bayestyper_output} \
      ~{true="-z" false="" compress_outputprefixvcf_using} \
      ~{true="-r" false="" arg_unix_time} \
      ~{true="-p" false="" arg_number_threads} \
      ~{true="-y" false="" arg_chromosome_gender} \
      ~{if defined(gibbs_burn_in) then ("--gibbs-burn-in " +  '"' + gibbs_burn_in + '"') else ""} \
      ~{if defined(gibbs_samples) then ("--gibbs-samples " +  '"' + gibbs_samples + '"') else ""} \
      ~{if defined(number_of_gibbs_chains) then ("--number-of-gibbs-chains " +  '"' + number_of_gibbs_chains + '"') else ""} \
      ~{if defined(km_er_subsampling_rate) then ("--kmer-subsampling-rate " +  '"' + km_er_subsampling_rate + '"') else ""} \
      ~{if defined(max_haplotype_variant_km_ers) then ("--max-haplotype-variant-kmers " +  '"' + max_haplotype_variant_km_ers + '"') else ""} \
      ~{true="--noise-genotyping" false="" noise_genotyping} \
      ~{if defined(noise_rate_prior) then ("--noise-rate-prior " +  '"' + noise_rate_prior + '"') else ""} \
      ~{if defined(min_genotype_posterior) then ("--min-genotype-posterior " +  '"' + min_genotype_posterior + '"') else ""} \
      ~{if defined(min_number_of_km_ers) then ("--min-number-of-kmers " +  '"' + min_number_of_km_ers + '"') else ""} \
      ~{true="--disable-observed-kmers" false="" disable_observed_km_ers}
  >>>
  parameter_meta {
    arg_variantclustersbin_file: "[ --variant-clusters-file ] arg    variant_clusters.bin file (BayesTyper cluster output)."
    parameterkmersfagz_bayestyper_cluster: "[ --cluster-data-dir ] arg         cluster data directory containing intercluster_regions.txt.gz, multigroup_kmers.bloom[Meta|Data] &  parameter_kmers.fa.gz (BayesTyper cluster output)."
    arg_samples_file: "[ --samples-file ] arg             samples file (see github documentation for format specifications)."
    arg_reference_genome: "[ --genome-file ] arg              reference genome file (fasta format)."
    arg_decoy_sequences: "[ --decoy-file ] arg               decoy sequences file (fasta format)."
    arg_bayestyper_output: "[ --output-prefix ] arg (=bayestyper) output prefix."
    compress_outputprefixvcf_using: "[ --gzip-output ] [=arg(=1)] (=0)  compress <output-prefix>.vcf using gzip."
    arg_unix_time: "[ --random-seed ] arg (=unix time) seed for pseudo-random number generator."
    arg_number_threads: "[ --threads ] arg (=1)             number of threads used (+= 2 I/O threads)."
    arg_chromosome_gender: "[ --chromosome-ploidy-file ] arg   chromosome gender ploidy file (see github documentation for format specifications). Human ploidy levels will be assumed if no file is given."
    gibbs_burn_in: "(=100)            number of burn-in iterations."
    gibbs_samples: "(=250)            number of Gibbs iterations."
    number_of_gibbs_chains: "(=20)    number of independent Gibbs sampling chains."
    km_er_subsampling_rate: "(=0.1)    subsampling rate for subsetting kmers used for genotype inference."
    max_haplotype_variant_km_ers: "(=500) maximum number of kmers used for genotype inference after subsampling across a haplotype candidate for each variant."
    noise_genotyping: "[=arg(=1)] (=0)    estimate noise model parameters and genotypes jointly (generally slower and uses more memory)."
    noise_rate_prior: "(=1,0.01)      parameters for Poisson noise rate gamma prior (<shape>,<scale>). All samples will use the same parameters."
    min_genotype_posterior: "(=0.99)  filter genotypes with a posterior probability (GPP) below <value>."
    min_number_of_km_ers: "(=1)        filter sampled alleles with less than <value> kmers (NAK)."
    disable_observed_km_ers: "[=arg(=1)] (=0) disable filtering of sampled alleles with a low fraction of observed kmers (FAK)."
  }
}