version 1.0

task CobsDocdump {
  input {
    Boolean? file_type
    Boolean? no_canonicalize
    Boolean? term_size
    File path
  }
  command <<<
    cobs doc_dump \
      ~{path} \
      ~{if (file_type) then "--file-type" else ""} \
      ~{if (no_canonicalize) then "--no-canonicalize" else ""} \
      ~{if (term_size) then "--term-size" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0"
  }
  parameter_meta {
    file_type: "\\\"list\\\" to read a file list, or filter documents by\\nfile type (any, text, cortex, fasta, fastq, etc)"
    no_canonicalize: "don't canonicalize DNA k-mers, default: false"
    term_size: "term size (k-mer size), default: 31"
    path: "path to documents to dump"
  }
  output {
    File out_stdout = stdout()
  }
}