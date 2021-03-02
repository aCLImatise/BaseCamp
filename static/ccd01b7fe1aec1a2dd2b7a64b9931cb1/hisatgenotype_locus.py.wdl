version 1.0

task HisatgenotypeLocuspy {
  input {
    File? base_fname
    String? locus_list
    String? genotype_genome
    Boolean? fast_a
    File? filename_singleend_reads
    Int? one
    Int? two
    File? alignment
    Int? threads
    Boolean? no_partial
    Int? aligner_list
    Int? simulate_interval
    Int? read_len
    Int? fragment_len
    Int? best_alleles
    Int? num_edit_dist
    Float? per_base_error_rate
    Float? per_base_snp_rate
    Int? skip_fragment_regions
    Boolean? verbose
    Int? verbose_level
    Int? debug
    File? assembly_base
    Boolean? assembly
    Boolean? no_error_correction
    Boolean? keep_alignment
    String? only_locus_list
    Boolean? discordant
    Boolean? type_primary_exons
    Boolean? keep_low_abundance_alleles
    Boolean? assembly_verbose
    String? display_alleles
  }
  command <<<
    hisatgenotype_locus_py \
      ~{if defined(base_fname) then ("--base-fname " +  '"' + base_fname + '"') else ""} \
      ~{if defined(locus_list) then ("--locus-list " +  '"' + locus_list + '"') else ""} \
      ~{if defined(genotype_genome) then ("--genotype-genome " +  '"' + genotype_genome + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(filename_singleend_reads) then ("-U " +  '"' + filename_singleend_reads + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (no_partial) then "--no-partial" else ""} \
      ~{if defined(aligner_list) then ("--aligner-list " +  '"' + aligner_list + '"') else ""} \
      ~{if defined(simulate_interval) then ("--simulate-interval " +  '"' + simulate_interval + '"') else ""} \
      ~{if defined(read_len) then ("--read-len " +  '"' + read_len + '"') else ""} \
      ~{if defined(fragment_len) then ("--fragment-len " +  '"' + fragment_len + '"') else ""} \
      ~{if defined(best_alleles) then ("--best-alleles " +  '"' + best_alleles + '"') else ""} \
      ~{if defined(num_edit_dist) then ("--num-editdist " +  '"' + num_edit_dist + '"') else ""} \
      ~{if defined(per_base_error_rate) then ("--perbase-errorrate " +  '"' + per_base_error_rate + '"') else ""} \
      ~{if defined(per_base_snp_rate) then ("--perbase-snprate " +  '"' + per_base_snp_rate + '"') else ""} \
      ~{if defined(skip_fragment_regions) then ("--skip-fragment-regions " +  '"' + skip_fragment_regions + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(verbose_level) then ("--verbose-level " +  '"' + verbose_level + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(assembly_base) then ("--assembly-base " +  '"' + assembly_base + '"') else ""} \
      ~{if (assembly) then "--assembly" else ""} \
      ~{if (no_error_correction) then "--no-error-correction" else ""} \
      ~{if (keep_alignment) then "--keep-alignment" else ""} \
      ~{if defined(only_locus_list) then ("--only-locus-list " +  '"' + only_locus_list + '"') else ""} \
      ~{if (discordant) then "--discordant" else ""} \
      ~{if (type_primary_exons) then "--type-primary-exons" else ""} \
      ~{if (keep_low_abundance_alleles) then "--keep-low-abundance-alleles" else ""} \
      ~{if (assembly_verbose) then "--assembly-verbose" else ""} \
      ~{if defined(display_alleles) then ("--display-alleles " +  '"' + display_alleles + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base_fname: "base filename for backbone sequence, variants, and\\nlinking info (default: hla)"
    locus_list: "A comma-separated list of genes (default: empty, all\\ngenes)"
    genotype_genome: "Base name for genotype genome, which the program will\\nuse instead of region-based small indexes (default:\\nempty)"
    fast_a: "FASTA format"
    filename_singleend_reads: "filename for single-end reads"
    one: "filename for paired-end reads"
    two: "filename for paired-end reads"
    alignment: "BAM file name"
    threads: "Number of threads"
    no_partial: "Include partial alleles (e.g. A_nuc.fasta)"
    aligner_list: "A comma-separated list of aligners such as\\nhisat2.graph,hisat2.linear,bowtie2.linear (default:\\nhisat2.graph)"
    simulate_interval: "Reads simulated at every these base pairs (default:\\n10)"
    read_len: "Length of simulated reads (default: 100)"
    fragment_len: "Length of fragments (default: 350)"
    best_alleles: "A seeding number for randomness (default: 1)"
    num_edit_dist: "Maximum number of mismatches per read alignment to be\\nconsidered (default: 2)"
    per_base_error_rate: "Per basepair error rate in percentage when simulating\\nreads (default: 0.0)"
    per_base_snp_rate: "Per basepair SNP rate in percentage when simulating\\nreads (default: 0.0)"
    skip_fragment_regions: "A comma-separated list of regions from which no reads\\noriginate, e.g., 500-600,1200-1400 (default: None)."
    verbose: "also print some statistics to stderr"
    verbose_level: "also print some statistics to stderr (default: 0)"
    debug: "e.g., test_id:10,read_id:10000,basic_test"
    assembly_base: "base file name (default: assembly_graph)"
    assembly: "Perform assembly"
    no_error_correction: "Correct sequencing errors"
    keep_alignment: "Keep alignment file"
    only_locus_list: "A comma-separated list of genes (default: empty, all\\ngenes)"
    discordant: "Allow discordantly mapped pairs or singletons"
    type_primary_exons: "Look at primary exons first"
    keep_low_abundance_alleles: "Do not remove alleles with low abundance while\\nperforming typing"
    assembly_verbose: "Output intermediate assembly information"
    display_alleles: "A comma-separated list of alleles to display in HTML\\n(default: empty)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}