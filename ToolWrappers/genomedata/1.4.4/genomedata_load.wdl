version 1.0

task Genomedataload {
  input {
    File? sequence
    Boolean? verbose
    File? file__track
    File? mask_file
    Boolean? assembly
    Boolean? file_mode
    Boolean? directory_mode
    String create_genomedata_archive
    String respectively_dot
    String genomedata_archive
  }
  command <<<
    genomedata_load \
      ~{create_genomedata_archive} \
      ~{respectively_dot} \
      ~{genomedata_archive} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(file__track) then ("-t " +  '"' + file__track + '"') else ""} \
      ~{if defined(mask_file) then ("--maskfile " +  '"' + mask_file + '"') else ""} \
      ~{if (assembly) then "--assembly" else ""} \
      ~{if (file_mode) then "--file-mode" else ""} \
      ~{if (directory_mode) then "--directory-mode" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sequence: "Add the sequence data in the specified file or files\\n(may use UNIX glob wildcard syntax)"
    verbose: "Print status updates and diagnostic messages"
    file__track: "=FILE, --track NAME=FILE\\nAdd data from FILE as the track NAME, such as: -t\\nsignal=signal.wig"
    mask_file: "A BED file containing regions to mask out from tracks\\nbefore loading"
    assembly: "sequence files contain assembly (AGP) files instead of"
    file_mode: "If specified, the Genomedata archive will be\\nimplemented as a single file, with a separate h5 group\\nfor each Chromosome. This is recommended if there are\\na large number of Chromosomes. The default behavior is\\nto use a single file if there are at least 100\\nChromosomes being added."
    directory_mode: "If specified, the Genomedata archive will be\\nimplemented as a directory, with a separate file for\\neach Chromosome. This is recommended if there are a\\nsmall number of Chromosomes. The default behavior is\\nto use a directory if there are fewer than 100\\nChromosomes being added."
    create_genomedata_archive: "Create Genomedata archive named GENOMEDATAFILE by loading"
    respectively_dot: "Example: genomedata-load -t high=signal.high.wig -t low=signal.low.bed.gz -s chrX.fa -s chrY.fa.gz GENOMEDATAFILE"
    genomedata_archive: "genomedata archive"
  }
  output {
    File out_stdout = stdout()
    File out_mask_file = "${in_mask_file}"
  }
}