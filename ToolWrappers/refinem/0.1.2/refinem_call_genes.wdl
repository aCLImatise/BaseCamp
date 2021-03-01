version 1.0

task RefinemCallGenes {
  input {
    File? unbinned_file
    Directory? genome_ext
    Int? cpus
    Boolean? silent
    String genome_nt_dir
    String genome
  }
  command <<<
    refinem call_genes \
      ~{genome_nt_dir} \
      ~{genome} \
      ~{if defined(unbinned_file) then ("--unbinned_file " +  '"' + unbinned_file + '"') else ""} \
      ~{if defined(genome_ext) then ("--genome_ext " +  '"' + genome_ext + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refinem:0.1.2--pyh3252c3a_0"
  }
  parameter_meta {
    unbinned_file: "call genes on unbinned scaffolds"
    genome_ext: "extension of genomes (other files in directory are\\nignored) (default: fna)"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output of logger"
    genome_nt_dir: "directory containing nucleotide scaffolds for each"
    genome: "output_dir            output directory"
  }
  output {
    File out_stdout = stdout()
  }
}