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
      ~{if (keep_negatives) then "--keep-negatives" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "Number of threads to use (default: 1)"
    path_output_directory: "path to the output directory (default: None)"
    file_output: "path to the output file (default: None)"
    tag: "Set output tag (default: macrel.out)"
    fast_a: "path to the input FASTA file. This is used in both the\\npeptides command (where the file is expected to\\ncontain short amino-acid sequences) and in the contigs\\ncommand (where the file is expected to contain longer\\nnucleotide contigs) (default: None)"
    cluster: "Whether to pre-cluster the smORFs (at 100% identity)\\nto avoid repeats (default: False)"
    keep_fast_a_headers: "Keep complete FASTA headers [get-smorfs command]\\n(default: False)"
    tmpdir: "Temporary directory to use (default: $TMPDIR in the\\nenvironment or /tmp) (default: None)"
    keep_negatives: "Whether to keep non-AMPs in the output (default:\\nFalse)"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
    File out_file_output = "${in_file_output}"
  }
}