version 1.0

task Genomedataloadseq {
  input {
    Boolean? assembly
    Boolean? file_mode
    Boolean? directory_mode
    Boolean? verbose
    File? assembly_report
    String? name_style
    String gd_archive
    String seq_files
    String sequence
  }
  command <<<
    genomedata_load_seq \
      ~{gd_archive} \
      ~{seq_files} \
      ~{sequence} \
      ~{if (assembly) then "--assembly" else ""} \
      ~{if (file_mode) then "--file-mode" else ""} \
      ~{if (directory_mode) then "--directory-mode" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(assembly_report) then ("--assembly-report " +  '"' + assembly_report + '"') else ""} \
      ~{if defined(name_style) then ("--name-style " +  '"' + name_style + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0"
  }
  parameter_meta {
    assembly: "SEQFILE contains assembly (AGP) files instead of"
    file_mode: "If specified, the Genomedata archive will be\\nimplemented as a single file, with a separate h5 group\\nfor each Chromosome. This is recommended if there are\\na large number of Chromosomes. The default behavior is\\nto use a single file if there are at least 100\\nChromosomes being added."
    directory_mode: "If specified, the Genomedata archive will be\\nimplemented as a directory, with a separate file for\\neach Chromosome. This is recommended if there are a\\nsmall number of Chromosomes. The default behavior is\\nto use a directory if there are fewer than 100\\nChromosomes being added."
    verbose: "Print status updates and diagnostic messages"
    assembly_report: "Tab-delimited file with columnar mappings between\\nchromosome naming styles."
    name_style: "Chromsome naming style to use based on ASSEMBLY-\\nREPORT. Default: UCSC-style-name\\n"
    gd_archive: "genomedata archive"
    seq_files: "sequences in FASTA format"
    sequence: "-s, --sizes           SEQFILE contains list of sizes instead of sequence"
  }
  output {
    File out_stdout = stdout()
  }
}