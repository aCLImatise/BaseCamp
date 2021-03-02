version 1.0

task Focus {
  input {
    File? query
    Directory? output_directory
    Int? km_er_size
    Directory? alternate_directory
    String? output_prefix
    Int? threads
    Boolean? list_output
    File? log
    Boolean? v
  }
  command <<<
    focus \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer_size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(alternate_directory) then ("--alternate_directory " +  '"' + alternate_directory + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (list_output) then "--list_output" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query: "Path to directory with FAST(A/Q) files"
    output_directory: "Path to output files"
    km_er_size: "K-mer size (6 or 7) (Default: 6)"
    alternate_directory: "Alternate directory for your databases"
    output_prefix: "Output prefix (Default: output)"
    threads: "Number Threads used in the k-mer counting (Default: 4)"
    list_output: "Output results as a list"
    log: "Path to log file (Default: STDOUT)."
    v: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}