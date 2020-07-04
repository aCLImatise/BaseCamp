version 1.0

task Snpmutator {
  input {
    Int? num_simulations
    Int? num_substitutions
    Int? num_insertions
    Int? num_deletions
    Int? random_seed
    Int? pool
    Int? group
    Boolean? mono
    String? seq_id
    File? ref
    String? fast_a_dir
    File? summary
    File? vcf
    File? metrics
    String input_fast_a_file
  }
  command <<<
    snpmutator \
      ~{input_fast_a_file} \
      ~{if defined(num_simulations) then ("--num-simulations " +  '"' + num_simulations + '"') else ""} \
      ~{if defined(num_substitutions) then ("--num-substitutions " +  '"' + num_substitutions + '"') else ""} \
      ~{if defined(num_insertions) then ("--num-insertions " +  '"' + num_insertions + '"') else ""} \
      ~{if defined(num_deletions) then ("--num-deletions " +  '"' + num_deletions + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(pool) then ("--pool " +  '"' + pool + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{true="--mono" false="" mono} \
      ~{if defined(seq_id) then ("--seqid " +  '"' + seq_id + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(fast_a_dir) then ("--fasta-dir " +  '"' + fast_a_dir + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(metrics) then ("--metrics " +  '"' + metrics + '"') else ""}
  >>>
  parameter_meta {
    num_simulations: "Number of mutated sequences to generate. (default: 100)"
    num_substitutions: "Number of substitutions. (default: 500)"
    num_insertions: "Number of insertions. (default: 20)"
    num_deletions: "Number of deletions. (default: 20)"
    random_seed: "Random number seed; if not set, the results are not reproducible. (default: None)"
    pool: "Choose variants from a pool of eligible positions of the specified size (default: 0)"
    group: "Group size. When greater than zero, this parameter chooses a new pool of positions for each group of replicates. (default: None)"
    mono: "Create monomorphic alleles (default: False)"
    seq_id: "Output fasta description line sequence ID. Each mutated output file has only one sequence. If not specified, the defline id will be the id of the first sequence in the input fasta file. The defline is always suffixed with an annotation in this format: (mutated s=900 i=50 d=50). The seq id is also written to the CHROM column of the output VCF file. (default: None)"
    ref: "Output concatenanted reference file with no mutations, but all sequences concatenanted together. All the replicates will be mutations of this file. (default: None)"
    fast_a_dir: "Output directory for generated fasta files. (default: .)"
    summary: "Output positional summary file. (default: None)"
    vcf: "Output VCF file. (default: None)"
    metrics: "Output metrics file. (default: None)"
    input_fast_a_file: "Input fasta file."
  }
}