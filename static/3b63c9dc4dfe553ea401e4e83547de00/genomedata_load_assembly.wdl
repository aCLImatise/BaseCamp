version 1.0

task Genomedataloadassembly {
  input {
    Boolean? assembly
    Boolean? file_mode
    Boolean? directory_mode
    Boolean? verbose
    Boolean? s
    String gd_archive
    String seq_files
    String sequence
  }
  command <<<
    genomedata_load_assembly \
      ~{gd_archive} \
      ~{seq_files} \
      ~{sequence} \
      ~{if (assembly) then "--assembly" else ""} \
      ~{if (file_mode) then "--file-mode" else ""} \
      ~{if (directory_mode) then "--directory-mode" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (s) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly: "SEQFILE contains assembly (AGP) files instead of"
    file_mode: "If specified, the Genomedata archive will be\\nimplemented as a single file, with a separate h5 group\\nfor each Chromosome. This is recommended if there are\\na large number of Chromosomes. The default behavior is\\nto use a single file if there are at least 100\\nChromosomes being added."
    directory_mode: "If specified, the Genomedata archive will be\\nimplemented as a directory, with a separate file for\\neach Chromosome. This is recommended if there are a\\nsmall number of Chromosomes. The default behavior is\\nto use a directory if there are fewer than 100\\nChromosomes being added."
    verbose: "Print status updates and diagnostic messages"
    s: ""
    gd_archive: "genomedata archive"
    seq_files: "sequences in FASTA format"
    sequence: "-s, --sizes           SEQFILE contains list of sizes instead of sequence"
  }
  output {
    File out_stdout = stdout()
  }
}