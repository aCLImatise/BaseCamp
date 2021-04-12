version 1.0

task CobsDoclist {
  input {
    Boolean? file_type
    Boolean? term_size
    File path
  }
  command <<<
    cobs doc_list \
      ~{path} \
      ~{if (file_type) then "--file-type" else ""} \
      ~{if (term_size) then "--term-size" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0"
  }
  parameter_meta {
    file_type: "\\\"list\\\" to read a file list, or filter documents by file type\\n(any, text, cortex, fasta, fastq, etc)"
    term_size: "term size (k-mer size), default: 31"
    path: "path to documents to list"
  }
  output {
    File out_stdout = stdout()
  }
}