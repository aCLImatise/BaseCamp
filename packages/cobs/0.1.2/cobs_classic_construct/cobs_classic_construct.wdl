version 1.0

task CobsClassicconstruct {
  input {
    Directory? clobber
    Directory? continue
    Boolean? false_positive_rate
    Boolean? file_type
    Boolean? keep_temporary
    Boolean? memory
    Boolean? no_canonicalize
    Boolean? term_size
    Boolean? threads
    Boolean? tmp_path
    String path_input_file
    String out_file
  }
  command <<<
    cobs classic_construct \
      ~{path_input_file} \
      ~{out_file} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if (false_positive_rate) then "--false-positive-rate" else ""} \
      ~{if (file_type) then "--file-type" else ""} \
      ~{if (keep_temporary) then "--keep-temporary" else ""} \
      ~{if (memory) then "--memory" else ""} \
      ~{if (no_canonicalize) then "--no-canonicalize" else ""} \
      ~{if (term_size) then "--term-size" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (tmp_path) then "--tmp-path" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0"
  }
  parameter_meta {
    clobber: "erase output directory if it exists"
    continue: "continue in existing output directory"
    false_positive_rate: "false positive rate, default: 0.300000"
    file_type: "\\\"list\\\" to read a file list, or filter documents by\\nfile type (any, text, cortex, fasta, fastq, etc)"
    keep_temporary: "keep temporary files during construction"
    memory: "memory in bytes to use, default: 5.433 Gi"
    no_canonicalize: "don't canonicalize DNA k-mers, default: false"
    term_size: "term size (k-mer size), default: 31"
    threads: "number of threads to use, default: max cores"
    tmp_path: "directory for intermediate index files, default:\\nout_file + \\\".tmp\\\")\\n"
    path_input_file: "path to the input directory or file"
    out_file: "path to the output .cobs_classic index file "
  }
  output {
    File out_stdout = stdout()
    Directory out_clobber = "${in_clobber}"
    Directory out_continue = "${in_continue}"
  }
}