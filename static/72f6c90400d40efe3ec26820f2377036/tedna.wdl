version 1.0

task Tedna {
  input {
    Boolean? file_one
    Boolean? file_two
    Boolean? insert
    Boolean? km_er
    Boolean? output_file
    Boolean? threshold
    Boolean? min_te_size
    Boolean? max_te_size
    Boolean? processors
    Boolean? bytes_per_thread
    Boolean? max_reads
    Boolean? check
  }
  command <<<
    tedna \
      ~{true="--file1" false="" file_one} \
      ~{true="--file2" false="" file_two} \
      ~{true="--insert" false="" insert} \
      ~{true="--kmer" false="" km_er} \
      ~{true="--output" false="" output_file} \
      ~{true="--threshold" false="" threshold} \
      ~{true="--min-te-size" false="" min_te_size} \
      ~{true="--max-te-size" false="" max_te_size} \
      ~{true="--processors" false="" processors} \
      ~{true="--bytes-per-thread" false="" bytes_per_thread} \
      ~{true="--max-reads" false="" max_reads} \
      ~{true="--check" false="" check}
  >>>
  parameter_meta {
    file_one: "First FASTQ file."
    file_two: "Second FASTQ file."
    insert: "Insert size."
    km_er: "K-mer size."
    output_file: "Output file."
    threshold: "K-mer frequency threshold   (default: ad hoc)."
    min_te_size: "Minimum TE size             (default: 500)."
    max_te_size: "Maximum TE size             (default: 30000)."
    processors: "Number of processors        (default: 2)."
    bytes_per_thread: "Number of bytes read per thread    (default: 10000000)."
    max_reads: "Maximum number of reads read       (default: 0), 0: read all."
    check: "Check if a sequence is assembled   (default: none)."
  }
}