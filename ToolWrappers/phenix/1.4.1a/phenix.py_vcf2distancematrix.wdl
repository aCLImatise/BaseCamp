version 1.0

task PhenixpyVcf2distancematrix {
  input {
    File? out
    Directory? directory
    Array[String] list_process_option
    File? alignment_input
    String? deletion
    Int? substitution
    File? include
    File? exclude
    Boolean? remove_recombination
    File? ref_genome
    Int? ref_genome_name
    Float? threshold
    Int? threads
    File? format
    File? tree
    Boolean? with_stats
  }
  command <<<
    phenix_py vcf2distancematrix \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(list_process_option) then ("--input " +  '"' + list_process_option + '"') else ""} \
      ~{if defined(alignment_input) then ("--alignment-input " +  '"' + alignment_input + '"') else ""} \
      ~{if defined(deletion) then ("--deletion " +  '"' + deletion + '"') else ""} \
      ~{if defined(substitution) then ("--substitution " +  '"' + substitution + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (remove_recombination) then "--remove-recombination" else ""} \
      ~{if defined(ref_genome) then ("--refgenome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(ref_genome_name) then ("--refgenomename " +  '"' + ref_genome_name + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if (with_stats) then "--with-stats" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "Path to the maxtrix output file in given format.\\n[REQUIRED. default format is tab separated. use\\n--format to change format]"
    directory: "Path to the directory with .vcf files. Input option 1."
    list_process_option: "List of VCF files to process. Input option 2."
    alignment_input: "FASTA FILE, -a MULTI FASTA FILE\\nMulti fasta file with whole genome input alignment.\\nInput option 3."
    deletion: "Method of recombination filtering. Either 'pairwise'\\nor 'complete' ['pairwise']"
    substitution: "Substituition model. Either 'number_of_differences',\\n'jc69', 'k80', 'tn84' or 't93'\\n['number_of_differences']"
    include: "FILE    Only include positions in BED file in the FASTA"
    exclude: "FILE    Exclude any positions specified in the BED file."
    remove_recombination: "Attempt to remove recombination from distance matrix.\\n[don't]"
    ref_genome: "FILE, -g FASTA FILE\\nReference genome used for SNP calling [Required for\\nrecombination removal]."
    ref_genome_name: "Name of reference genome in input alignment [Required\\nif input option 3 is used and reference is not named\\n'reference']."
    threshold: "Density tyhreshold above mean density for relevant\\npair. [1.0]."
    threads: "Number of threads to use. [1]."
    format: "Change format for output file. Available options csv,\\ntsv and mega. [tsv]"
    tree: "Make an NJ tree and write it to the given file in\\nnewick format. [Default: Don't make tree, only matrix]"
    with_stats: "Write additional files with information on removed\\nrecombinant SNPs. [don't]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_format = "${in_format}"
  }
}