version 1.0

task GofastaSamVariants {
  input {
    String? genbank
    String? outfile
    File? reference
    String? sam_file
    Int? threads
  }
  command <<<
    gofasta sam variants \
      ~{if defined(genbank) then ("--genbank " +  '"' + genbank + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(sam_file) then ("--samfile " +  '"' + sam_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gofasta:0.0.3--0"
  }
  parameter_meta {
    genbank: "Genbank format annotation of a sequence in the same coordinates as the alignment"
    outfile: "Where to write the variants (default \\\"stdout\\\")"
    reference: "Reference fasta file used to generate the sam file"
    sam_file: "samfile to read. If none is specified, will read from stdin"
    threads: "Number of threads to use (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}