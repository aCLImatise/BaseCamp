version 1.0

task CobsPrintkmers {
  input {
    Boolean? km_er_size
    String query
  }
  command <<<
    cobs print_kmers \
      ~{query} \
      ~{if (km_er_size) then "--kmer-size" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0"
  }
  parameter_meta {
    km_er_size: "the size of one kmer, default: 31"
    query: "the dna sequence to search for"
  }
  output {
    File out_stdout = stdout()
  }
}