version 1.0

task Balrog {
  input {
    File? in
    File? out
    Int? max_overlap
    Int? min_length
    Int? table
    Int? max_connections
    Int? gene_batch_size
    Int? tis_batch_size
    Boolean? verbose
  }
  command <<<
    balrog \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(max_overlap) then ("--max-overlap " +  '"' + max_overlap + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(max_connections) then ("--max-connections " +  '"' + max_connections + '"') else ""} \
      ~{if defined(gene_batch_size) then ("--gene-batch-size " +  '"' + gene_batch_size + '"') else ""} \
      ~{if defined(tis_batch_size) then ("--TIS-batch-size " +  '"' + tis_batch_size + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/balrog:0.3.2--py37h8270d21_0"
  }
  parameter_meta {
    in: "Path to input fasta or gzipped fasta"
    out: "Path to output annotation"
    max_overlap: "Maximum allowable overlap between genes in\\nnucleotides (default: 60)"
    min_length: "Minimum allowable gene length in nucleotides\\n(default: 90)"
    table: "Nucleotide to amino acid translation table. 11\\nfor most bacteria/archaea, 4 for\\nMycoplasma/Spiroplasma. (default: 11)"
    max_connections: "Maximum number of forward connections in the\\ndirected acyclic graph used to find a set of\\ncoherent genes in each genome. (default: 50)"
    gene_batch_size: "Batch size for the temporal convolutional\\nnetwork used to score genes. (default: 200)"
    tis_batch_size: "Batch size for the temporal convolutional\\nnetwork used to score TIS. (default: 5000)"
    verbose: "Verbose output, set --verbose=false to suppress\\noutput text (default: true)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}