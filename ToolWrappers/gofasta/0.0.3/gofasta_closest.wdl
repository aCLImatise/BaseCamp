version 1.0

task GofastaClosest {
  input {
    File? outfile
    String? query
    String? target
    Int? threads
  }
  command <<<
    gofasta closest \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gofasta:0.0.3--0"
  }
  parameter_meta {
    outfile: "The output file to write (default \\\"snps.csv\\\")"
    query: "Alignment of sequences to find matches for, in fasta format"
    target: "Alignment of sequences to search for matches in, in fasta format"
    threads: "Number of threads to use (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}