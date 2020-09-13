version 1.0

task Fastqkmers {
  input {
    Int? size
  }
  command <<<
    fastq_kmers \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""}
  >>>
  parameter_meta {
    size: "kmer size (default: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}