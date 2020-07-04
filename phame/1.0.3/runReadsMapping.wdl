version 1.0

task RunReadsMapping.pl {
  input {
    Boolean? referencefasta
    Boolean? querydir_contains_reads
    Boolean? provided_will_write
    Boolean? _of_threads
    Boolean? list_file
    Boolean? aligner_bwabowtie
    String perl
  }
  command <<<
    runReadsMapping.pl \
      ~{perl} \
      ~{true="-r" false="" referencefasta} \
      ~{true="-q" false="" querydir_contains_reads} \
      ~{true="-d" false="" provided_will_write} \
      ~{true="-t" false="" _of_threads} \
      ~{true="-l" false="" list_file} \
      ~{true="-a" false="" aligner_bwabowtie}
  >>>
  parameter_meta {
    referencefasta: "<reference_fasta> "
    querydir_contains_reads: "<query_dir> , contains reads files in the format *R[1-2].fastq, if paired, elase *.fastq"
    provided_will_write: "<output_directory>, if not provided will write files in current directory"
    _of_threads: "<# of threads> "
    list_file: "<list file>"
    aligner_bwabowtie: "<aligner bwa|bowtie>"
    perl: ""
  }
}