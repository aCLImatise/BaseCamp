version 1.0

task Galru {
  input {
    String? db_dir
    String? cas_fast_a
    String? technology
    String? threads
    String? output_file
    Boolean? extended_results
    String? gene_start_offset
    Int? min_mapping_quality
    String? q_cov_margin
    Int? min_bit_score
    Int? min_identity
    String? species
    Boolean? debug
    Boolean? verbose
    String input_file
  }
  command <<<
    galru \
      ~{input_file} \
      ~{if defined(db_dir) then ("--db_dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(cas_fast_a) then ("--cas_fasta " +  '"' + cas_fast_a + '"') else ""} \
      ~{if defined(technology) then ("--technology " +  '"' + technology + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{true="--extended_results" false="" extended_results} \
      ~{if defined(gene_start_offset) then ("--gene_start_offset " +  '"' + gene_start_offset + '"') else ""} \
      ~{if defined(min_mapping_quality) then ("--min_mapping_quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(q_cov_margin) then ("--qcov_margin " +  '"' + q_cov_margin + '"') else ""} \
      ~{if defined(min_bit_score) then ("--min_bitscore " +  '"' + min_bit_score + '"') else ""} \
      ~{if defined(min_identity) then ("--min_identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    db_dir: "Base directory for species databases, defaults to bundled (default: None)"
    cas_fast_a: "Cas gene FASTA file (optionally gzipped), defaults to bundled (default: None)"
    technology: "Sequencing technology (default: map-ont)"
    threads: "No. of threads to use (default: 1)"
    output_file: "Output filename, defaults to STDOUT (default: None)"
    extended_results: "Output extended results (default: False)"
    gene_start_offset: "Only count CRISPR reads which cover this base (default: 30)"
    min_mapping_quality: "Minimum mapping quality score (default: 10)"
    q_cov_margin: "Maximum perc coverage difference between CRISPR and read (default: 100)"
    min_bit_score: "Minimum blast bitscore (default: 38)"
    min_identity: "Minimum blast identity (default: 95)"
    species: "Species name, use galru_species to see all available (default: Mycobacterium_tuberculosis)"
    debug: "Turn on debugging and save intermediate files (default: False)"
    verbose: "Turn on verbose output (default: False)"
    input_file: "Input FASTQ file of uncorrected long reads (optionally gzipped)"
  }
}