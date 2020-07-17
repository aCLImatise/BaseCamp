version 1.0

task GenomedataLoadAssembly {
  input {
    Boolean? assembly
    Boolean? sizes
    Boolean? file_mode
    Boolean? directory_mode
    Boolean? verbose
    String gd_archive
    String seq_files
  }
  command <<<
    genomedata-load-assembly \
      ~{gd_archive} \
      ~{seq_files} \
      ~{true="--assembly" false="" assembly} \
      ~{true="--sizes" false="" sizes} \
      ~{true="--file-mode" false="" file_mode} \
      ~{true="--directory-mode" false="" directory_mode} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    assembly: "SEQFILE contains assembly (AGP) files instead of sequence"
    sizes: "SEQFILE contains list of sizes instead of sequence"
    file_mode: "If specified, the Genomedata archive will be implemented as a single file, with a separate h5 group for each Chromosome. This is recommended if there are a large number of Chromosomes. The default behavior is to use a single file if there are at least 100 Chromosomes being added."
    directory_mode: "If specified, the Genomedata archive will be implemented as a directory, with a separate file for each Chromosome. This is recommended if there are a small number of Chromosomes. The default behavior is to use a directory if there are fewer than 100 Chromosomes being added."
    verbose: "Print status updates and diagnostic messages"
    gd_archive: "genomedata archive"
    seq_files: "sequences in FASTA format"
  }
}