version 1.0

task F5cIndex {
  input {
    File? path_directory_containing
    File? sequencing_summary_file
    File? file_containing_paths
    Int? number_threads_used
    Int? iop
    Int? verbose
    String reads_dot_fast_q
  }
  command <<<
    f5c index \
      ~{reads_dot_fast_q} \
      ~{if defined(path_directory_containing) then ("-d " +  '"' + path_directory_containing + '"') else ""} \
      ~{if defined(sequencing_summary_file) then ("-s " +  '"' + sequencing_summary_file + '"') else ""} \
      ~{if defined(file_containing_paths) then ("-f " +  '"' + file_containing_paths + '"') else ""} \
      ~{if defined(number_threads_used) then ("-t " +  '"' + number_threads_used + '"') else ""} \
      ~{if defined(iop) then ("--iop " +  '"' + iop + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/f5c:0.6--h8b6279f_0"
  }
  parameter_meta {
    path_directory_containing: "path to the directory containing fast5 files. This option can be given multiple times."
    sequencing_summary_file: "the sequencing summary file"
    file_containing_paths: "file containing the paths to the sequencing summary files (one per line)"
    number_threads_used: "number of threads used for bgzf compression (makes indexing faster)"
    iop: "number of I/O processes to read fast5 files (makes indexing faster)"
    verbose: "verbosity level"
    reads_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}