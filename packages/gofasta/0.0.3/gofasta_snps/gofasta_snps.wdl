version 1.0

task GofastaSnps {
  input {
    String? outfile
    String? query
    String? reference
  }
  command <<<
    gofasta snps \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gofasta:0.0.3--0"
  }
  parameter_meta {
    outfile: "Output to write (default \\\"stdout\\\")"
    query: "Alignment of sequences to find snps in, in fasta format (default \\\"stdin\\\")"
    reference: "Reference sequence, in fasta format"
  }
  output {
    File out_stdout = stdout()
  }
}