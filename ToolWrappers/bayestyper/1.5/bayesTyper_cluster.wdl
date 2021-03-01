version 1.0

task BayesTyperCluster {
  input {
    Boolean? arg_variant_file
    Boolean? arg_samples_file
    Boolean? arg_reference_genome
    Boolean? arg_decoy_sequences
    Boolean? arg_bayestyperoutput_prefix
    Boolean? arg_unix_time
    Boolean? arg_number_used
    Boolean? arg_minimum_number
    Int? max_allele_length
    Int? copy_number_variant_threshold
    Int? max_number_of_sample_haplotypes
  }
  command <<<
    bayesTyper cluster \
      ~{if (arg_variant_file) then "-v" else ""} \
      ~{if (arg_samples_file) then "-s" else ""} \
      ~{if (arg_reference_genome) then "-g" else ""} \
      ~{if (arg_decoy_sequences) then "-d" else ""} \
      ~{if (arg_bayestyperoutput_prefix) then "-o" else ""} \
      ~{if (arg_unix_time) then "-r" else ""} \
      ~{if (arg_number_used) then "-p" else ""} \
      ~{if (arg_minimum_number) then "-u" else ""} \
      ~{if defined(max_allele_length) then ("--max-allele-length " +  '"' + max_allele_length + '"') else ""} \
      ~{if defined(copy_number_variant_threshold) then ("--copy-number-variant-threshold " +  '"' + copy_number_variant_threshold + '"') else ""} \
      ~{if defined(max_number_of_sample_haplotypes) then ("--max-number-of-sample-haplotypes " +  '"' + max_number_of_sample_haplotypes + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_variant_file: "[ --variant-file ] arg             variant file (vcf format)."
    arg_samples_file: "[ --samples-file ] arg             samples file (see github documentation for format specifications)."
    arg_reference_genome: "[ --genome-file ] arg              reference genome file (fasta format)."
    arg_decoy_sequences: "[ --decoy-file ] arg               decoy sequences file (fasta format)."
    arg_bayestyperoutput_prefix: "[ --output-prefix ] arg (=bayestyper)\\noutput prefix."
    arg_unix_time: "[ --random-seed ] arg (=unix time) seed for pseudo-random number generator."
    arg_number_used: "[ --threads ] arg (=1)             number of threads used (+= 2 I/O threads)."
    arg_minimum_number: "[ --min-number-of-unit-variants ] arg (=5000000)\\nminimum number of variants per inference unit."
    max_allele_length: "(=500000)     exclude alleles (reference and alternative) longer than <length>."
    copy_number_variant_threshold: "(=0.5)\\nminimum fraction of identical kmers required between an allele and the downstream reference sequence in order for it to\\nbe classified as a copy number."
    max_number_of_sample_haplotypes: "(=32)\\nmaximum number of haplotype candidates per sample.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}