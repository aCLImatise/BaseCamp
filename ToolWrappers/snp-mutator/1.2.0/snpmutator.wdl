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
    File? seq_id
    File? ref
    Directory? fast_a_dir
    File? summary
    File? vcf
    File? metrics
  }
  command <<<
    snpmutator \
      ~{if defined(num_simulations) then ("--num-simulations " +  '"' + num_simulations + '"') else ""} \
      ~{if defined(num_substitutions) then ("--num-substitutions " +  '"' + num_substitutions + '"') else ""} \
      ~{if defined(num_insertions) then ("--num-insertions " +  '"' + num_insertions + '"') else ""} \
      ~{if defined(num_deletions) then ("--num-deletions " +  '"' + num_deletions + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(pool) then ("--pool " +  '"' + pool + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if (mono) then "--mono" else ""} \
      ~{if defined(seq_id) then ("--seqid " +  '"' + seq_id + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(fast_a_dir) then ("--fasta-dir " +  '"' + fast_a_dir + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(metrics) then ("--metrics " +  '"' + metrics + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    num_simulations: "Number of mutated sequences to generate. (default:\\n100)"
    num_substitutions: "Number of substitutions. (default: 500)"
    num_insertions: "Number of insertions. (default: 20)"
    num_deletions: "Number of deletions. (default: 20)"
    random_seed: "Random number seed; if not set, the results are not\\nreproducible. (default: None)"
    pool: "Choose variants from a pool of eligible positions of\\nthe specified size (default: 0)"
    group: "Group size. When greater than zero, this parameter\\nchooses a new pool of positions for each group of\\nreplicates. (default: None)"
    mono: "Create monomorphic alleles (default: False)"
    seq_id: "Output fasta description line sequence ID. Each\\nmutated output file has only one sequence. If not\\nspecified, the defline id will be the id of the first\\nsequence in the input fasta file. The defline is\\nalways suffixed with an annotation in this format:\\n(mutated s=900 i=50 d=50). The seq id is also written\\nto the CHROM column of the output VCF file. (default:\\nNone)"
    ref: "Output concatenanted reference file with no mutations,\\nbut all sequences concatenanted together. All the\\nreplicates will be mutations of this file. (default:\\nNone)"
    fast_a_dir: "Output directory for generated fasta files. (default:\\n.)"
    summary: "Output positional summary file. (default: None)"
    vcf: "Output VCF file. (default: None)"
    metrics: "Output metrics file. (default: None)"
  }
  output {
    File out_stdout = stdout()
    File out_ref = "${in_ref}"
    Directory out_fast_a_dir = "${in_fast_a_dir}"
    File out_summary = "${in_summary}"
    File out_vcf = "${in_vcf}"
    File out_metrics = "${in_metrics}"
  }
}