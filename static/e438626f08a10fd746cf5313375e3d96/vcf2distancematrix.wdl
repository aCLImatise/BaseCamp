version 1.0

task Vcf2distancematrix.py {
  input {
    String? out
    String? deletion
    String? substitution
    String? include
    String? exclude
    Boolean? remove_recombination
    String? ref_genome
    String? ref_genome_name
    Float? threshold
    Int? threads
    String? format
    File? tree
    Boolean? with_stats
  }
  command <<<
    vcf2distancematrix.py \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(deletion) then ("--deletion " +  '"' + deletion + '"') else ""} \
      ~{if defined(substitution) then ("--substitution " +  '"' + substitution + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{true="--remove-recombination" false="" remove_recombination} \
      ~{if defined(ref_genome) then ("--refgenome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(ref_genome_name) then ("--refgenomename " +  '"' + ref_genome_name + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{true="--with-stats" false="" with_stats}
  >>>
  parameter_meta {
    out: "Path to the maxtrix output file in given format. [REQUIRED. default format is tab separated. use --format to change format]"
    deletion: "Method of recombination filtering. Either 'pairwise' or 'complete' ['pairwise']"
    substitution: "Substituition model. Either 'number_of_differences', 'jc69', 'k80', 'tn84' or 't93' ['number_of_differences']"
    include: "FILE    Only include positions in BED file in the FASTA"
    exclude: "FILE    Exclude any positions specified in the BED file."
    remove_recombination: "Attempt to remove recombination from distance matrix. [don't]"
    ref_genome: "FILE, -g FASTA FILE Reference genome used for SNP calling [Required for recombination removal]."
    ref_genome_name: "Name of reference genome in input alignment [Required if input option 3 is used and reference is not named 'reference']."
    threshold: "Density tyhreshold above mean density for relevant pair. [1.0]."
    threads: "Number of threads to use. [1]."
    format: "Change format for output file. Available options csv, tsv and mega. [tsv]"
    tree: "Make an NJ tree and write it to the given file in newick format. [Default: Don't make tree, only matrix]"
    with_stats: "Write additional files with information on removed recombinant SNPs. [don't]"
  }
}