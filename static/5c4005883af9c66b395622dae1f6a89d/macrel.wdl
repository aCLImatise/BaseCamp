version 1.0

task Macrel {
  input {
    Int? threads
    File? path_output_directory
    File? file_output
    String? tag
    File? fast_a
    Int? cluster
    Boolean? keep_fast_a_headers
    Directory? tmpdir
    Boolean? keep_negatives
    File? log_file
    Boolean? log_append
  }
  command <<<
    macrel \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(path_output_directory) then ("--output " +  '"' + path_output_directory + '"') else ""} \
      ~{if defined(file_output) then ("--file-output " +  '"' + file_output + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if (keep_fast_a_headers) then "--keep-fasta-headers" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if (keep_negatives) then "--keep-negatives" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (log_append) then "--log-append" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/macrel:1.0.0--py38h0213d0e_0"
  }
  parameter_meta {
    threads: "Number of threads to use"
    path_output_directory: "path to the output directory"
    file_output: "path to the output file"
    tag: "Set output tag"
    fast_a: "path to the input FASTA file. This is used in both the\\npeptides command (where the file is expected to\\ncontain short amino-acid sequences) and in the contigs\\ncommand (where the file is expected to contain longer\\nnucleotide contigs)"
    cluster: "Whether to pre-cluster the smORFs (at 100% identity)\\nto avoid repeats"
    keep_fast_a_headers: "Keep complete FASTA headers [get-smorfs command]"
    tmpdir: "Temporary directory to use (default: $TMPDIR in the\\nenvironment or /tmp)"
    keep_negatives: "Whether to keep non-AMPs in the output"
    log_file: "Path to the output logfile"
    log_append: "If set, then the log file is appended to (default:\\noverwrite existing file)"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
    File out_file_output = "${in_file_output}"
    File out_log_file = "${in_log_file}"
  }
}