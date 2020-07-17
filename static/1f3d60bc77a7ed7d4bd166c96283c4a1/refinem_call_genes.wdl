version 1.0

task RefinemCallGenes {
  input {
    String? unbinned_file
    String? genome_ext
    String? cpus
    Boolean? silent
    String genome_nt_dir
    String output_dir
  }
  command <<<
    refinem call_genes \
      ~{genome_nt_dir} \
      ~{output_dir} \
      ~{if defined(unbinned_file) then ("--unbinned_file " +  '"' + unbinned_file + '"') else ""} \
      ~{if defined(genome_ext) then ("--genome_ext " +  '"' + genome_ext + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    unbinned_file: "call genes on unbinned scaffolds"
    genome_ext: "extension of genomes (other files in directory are ignored) (default: fna)"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output of logger"
    genome_nt_dir: "directory containing nucleotide scaffolds for each genome"
    output_dir: "output directory"
  }
}