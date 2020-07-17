version 1.0

task FastqKmers {
  input {
    String? size
  }
  command <<<
    fastq-kmers \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""}
  >>>
  parameter_meta {
    size: "kmer size (default: 1)"
  }
}