version 1.0

task BayesTyperCluster {
  input {
    Boolean? arg_variant_format
    Boolean? arg_samples_file
    Boolean? arg_reference_genome
    Boolean? arg_decoy_sequences
    Boolean? arg_bayestyper_output
    Boolean? arg_unix_time
    Boolean? arg_number_threads
    Boolean? arg_minimum_number
    String? max_allele_length
    String? copy_number_variant_threshold
    String? max_number_of_sample_haplotypes
  }
  command <<<
    bayesTyper cluster \
      ~{true="-v" false="" arg_variant_format} \
      ~{true="-s" false="" arg_samples_file} \
      ~{true="-g" false="" arg_reference_genome} \
      ~{true="-d" false="" arg_decoy_sequences} \
      ~{true="-o" false="" arg_bayestyper_output} \
      ~{true="-r" false="" arg_unix_time} \
      ~{true="-p" false="" arg_number_threads} \
      ~{true="-u" false="" arg_minimum_number} \
      ~{if defined(max_allele_length) then ("--max-allele-length " +  '"' + max_allele_length + '"') else ""} \
      ~{if defined(copy_number_variant_threshold) then ("--copy-number-variant-threshold " +  '"' + copy_number_variant_threshold + '"') else ""} \
      ~{if defined(max_number_of_sample_haplotypes) then ("--max-number-of-sample-haplotypes " +  '"' + max_number_of_sample_haplotypes + '"') else ""}
  >>>
  parameter_meta {
    arg_variant_format: "[ --variant-file ] arg             variant file (vcf format)."
    arg_samples_file: "[ --samples-file ] arg             samples file (see github documentation for format specifications)."
    arg_reference_genome: "[ --genome-file ] arg              reference genome file (fasta format)."
    arg_decoy_sequences: "[ --decoy-file ] arg               decoy sequences file (fasta format)."
    arg_bayestyper_output: "[ --output-prefix ] arg (=bayestyper) output prefix."
    arg_unix_time: "[ --random-seed ] arg (=unix time) seed for pseudo-random number generator."
    arg_number_threads: "[ --threads ] arg (=1)             number of threads used (+= 2 I/O threads)."
    arg_minimum_number: "[ --min-number-of-unit-variants ] arg (=5000000) minimum number of variants per inference unit."
    max_allele_length: "(=500000)     exclude alleles (reference and alternative) longer than <length>."
    copy_number_variant_threshold: "(=0.5) minimum fraction of identical kmers required between an allele and the downstream reference sequence in order for it to be classified as a copy number."
    max_number_of_sample_haplotypes: "(=32) maximum number of haplotype candidates per sample."
  }
}