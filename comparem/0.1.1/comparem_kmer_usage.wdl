version 1.0

task ComparemKmerUsage {
  input {
    Boolean? counts
    String? length_kmers_eg
    File? file_ext
    String? cpus
    Boolean? silent
    String genome_files
    String output_file
  }
  command <<<
    comparem kmer_usage \
      ~{genome_files} \
      ~{output_file} \
      ~{true="--counts" false="" counts} \
      ~{if defined(length_kmers_eg) then ("-k " +  '"' + length_kmers_eg + '"') else ""} \
      ~{if defined(file_ext) then ("--file_ext " +  '"' + file_ext + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    counts: "output raw counts instead of frequencies"
    length_kmers_eg: "length of kmers, e.g., 4 -> tetranucleotides (default: 4)"
    file_ext: "extension of files to process (default: fna)"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output"
    genome_files: "input files with genomes in nucleotide space"
    output_file: "output file indicating kmer usage of each genome"
  }
}