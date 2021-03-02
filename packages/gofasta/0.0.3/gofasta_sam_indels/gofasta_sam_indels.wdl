version 1.0

task GofastaSamIndels {
  input {
    String? insertions_out
    String? deletions_out
    Int? threshold
    File? reference
    String? sam_file
    Int? threads
  }
  command <<<
    gofasta sam indels \
      ~{if defined(insertions_out) then ("--insertions-out " +  '"' + insertions_out + '"') else ""} \
      ~{if defined(deletions_out) then ("--deletions-out " +  '"' + deletions_out + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(sam_file) then ("--samfile " +  '"' + sam_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gofasta:0.0.3--0"
  }
  parameter_meta {
    insertions_out: "Where to write the insertions (default \\\"insertions.txt\\\")"
    deletions_out: "Where to write the deletions (default \\\"deletions.txt\\\")"
    threshold: "Minimum count for an indel to be included in the output (default 2)"
    reference: "Reference fasta file used to generate the sam file"
    sam_file: "samfile to read. If none is specified, will read from stdin"
    threads: "Number of threads to use (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}