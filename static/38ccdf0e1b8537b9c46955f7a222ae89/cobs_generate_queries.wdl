version 1.0

task CobsGeneratequeries {
  input {
    Boolean? file_type
    Boolean? negative
    File? out_file
    Boolean? positive
    Boolean? seed
    Boolean? size
    Boolean? term_size
    Boolean? threads
    Boolean? true_negative
    File path
  }
  command <<<
    cobs generate_queries \
      ~{path} \
      ~{if (file_type) then "--file-type" else ""} \
      ~{if (negative) then "--negative" else ""} \
      ~{if (out_file) then "--out-file" else ""} \
      ~{if (positive) then "--positive" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (size) then "--size" else ""} \
      ~{if (term_size) then "--term-size" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (true_negative) then "--true-negative" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0"
  }
  parameter_meta {
    file_type: "\\\"list\\\" to read a file list, or filter documents by file\\ntype (any, text, cortex, fasta, fastq, etc)"
    negative: "construct this number of random non-existing negative\\nqueries, default: 0"
    out_file: "output file path"
    positive: "pick this number of existing positive queries, default: 0"
    seed: "random seed"
    size: "extend positive terms with random data to this size"
    term_size: "term size (k-mer size), default: 31"
    threads: "number of threads to use, default: max cores"
    true_negative: "check that negative queries actually are not in the\\ndocuments (slow)\\n"
    path: "path to base documents"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}