version 1.0

task RunReadsMappingpl {
  input {
    Boolean? referencefasta
    Boolean? contains_reads_files
    Boolean? provided_write_files
    Boolean? _of_threads
    Boolean? list_file
    Boolean? aligner_bwabowtie
  }
  command <<<
    runReadsMapping_pl \
      ~{if (referencefasta) then "-r" else ""} \
      ~{if (contains_reads_files) then "-q" else ""} \
      ~{if (provided_write_files) then "-d" else ""} \
      ~{if (_of_threads) then "-t" else ""} \
      ~{if (list_file) then "-l" else ""} \
      ~{if (aligner_bwabowtie) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    referencefasta: "<reference_fasta>"
    contains_reads_files: "<query_dir> , contains reads files in the format *R[1-2].fastq, if paired, elase *.fastq"
    provided_write_files: "<output_directory>, if not provided will write files in current directory"
    _of_threads: "<# of threads>"
    list_file: "<list file>"
    aligner_bwabowtie: "<aligner bwa|bowtie>"
  }
  output {
    File out_stdout = stdout()
  }
}