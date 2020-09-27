version 1.0

task RunReadsMappingpl {
  input {
    Boolean? referencefasta
    Boolean? querydir_contains_reads
    Boolean? outputdirectory_provided_will
    Boolean? _of_threads
    Boolean? list_file
    Boolean? aligner_bwabowtie
  }
  command <<<
    runReadsMapping_pl \
      ~{if (referencefasta) then "-r" else ""} \
      ~{if (querydir_contains_reads) then "-q" else ""} \
      ~{if (outputdirectory_provided_will) then "-d" else ""} \
      ~{if (_of_threads) then "-t" else ""} \
      ~{if (list_file) then "-l" else ""} \
      ~{if (aligner_bwabowtie) then "-a" else ""}
  >>>
  parameter_meta {
    referencefasta: "<reference_fasta>"
    querydir_contains_reads: "<query_dir> , contains reads files in the format *R[1-2].fastq, if paired, elase *.fastq"
    outputdirectory_provided_will: "<output_directory>, if not provided will write files in current directory"
    _of_threads: "<# of threads>"
    list_file: "<list file>"
    aligner_bwabowtie: "<aligner bwa|bowtie>"
  }
  output {
    File out_stdout = stdout()
  }
}