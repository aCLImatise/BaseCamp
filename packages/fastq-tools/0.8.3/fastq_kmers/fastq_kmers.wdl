version 1.0

task Fastqkmers {
  input {
    Int? size
  }
  command <<<
    fastq_kmers \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastq-tools:0.8.3--hed695b0_0"
  }
  parameter_meta {
    size: "kmer size (default: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}