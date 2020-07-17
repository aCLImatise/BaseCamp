version 1.0

task GenomedataLoad {
  input {
    Boolean? verbose
    String? sequence
    String? file__track
    String? mask_file
    Boolean? assembly
    Boolean? sizes
    Boolean? file_mode
    Boolean? directory_mode
    String genome_data_file
  }
  command <<<
    genomedata-load \
      ~{genome_data_file} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(file__track) then ("-t " +  '"' + file__track + '"') else ""} \
      ~{if defined(mask_file) then ("--maskfile " +  '"' + mask_file + '"') else ""} \
      ~{true="--assembly" false="" assembly} \
      ~{true="--sizes" false="" sizes} \
      ~{true="--file-mode" false="" file_mode} \
      ~{true="--directory-mode" false="" directory_mode}
  >>>
  parameter_meta {
    verbose: "Print status updates and diagnostic messages"
    sequence: "Add the sequence data in the specified file or files (may use UNIX glob wildcard syntax)"
    file__track: "=FILE, --track NAME=FILE Add data from FILE as the track NAME, such as: -t signal=signal.wig"
    mask_file: "A BED file containing regions to mask out from tracks before loading"
    assembly: "sequence files contain assembly (AGP) files instead of sequence"
    sizes: "sequence files contain list of sizes instead of sequence"
    file_mode: "If specified, the Genomedata archive will be implemented as a single file, with a separate h5 group for each Chromosome. This is recommended if there are a large number of Chromosomes. The default behavior is to use a single file if there are at least 100 Chromosomes being added."
    directory_mode: "If specified, the Genomedata archive will be implemented as a directory, with a separate file for each Chromosome. This is recommended if there are a small number of Chromosomes. The default behavior is to use a directory if there are fewer than 100 Chromosomes being added."
    genome_data_file: "genomedata archive"
  }
}