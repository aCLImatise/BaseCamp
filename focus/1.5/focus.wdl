version 1.0

task Focus {
  input {
    String? query
    String? output_directory
    String? km_er_size
    String? alternate_directory
    String? output_prefix
    String? threads
    Boolean? list_output
    String? log
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
      ~{true="--list_output" false="" list_output} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
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
}