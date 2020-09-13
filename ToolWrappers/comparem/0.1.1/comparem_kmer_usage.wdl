version 1.0

task ComparemKmerUsage {
  input {
    Boolean? counts
    Int? length_kmers_tetranucleotides
    File? file_ext
    Int? cpus
    Boolean? silent
    String genome_files
    String output_file
  }
  command <<<
    comparem kmer_usage \
      ~{genome_files} \
      ~{output_file} \
      ~{if (counts) then "--counts" else ""} \
      ~{if defined(length_kmers_tetranucleotides) then ("-k " +  '"' + length_kmers_tetranucleotides + '"') else ""} \
      ~{if defined(file_ext) then ("--file_ext " +  '"' + file_ext + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    counts: "output raw counts instead of frequencies"
    length_kmers_tetranucleotides: "length of kmers, e.g., 4 -> tetranucleotides (default:\\n4)"
    file_ext: "extension of files to process (default: fna)"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output"
    genome_files: "input files with genomes in nucleotide space"
    output_file: "output file indicating kmer usage of each genome"
  }
  output {
    File out_stdout = stdout()
  }
}