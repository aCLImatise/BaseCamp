version 1.0

task XsvStats {
  input {
    String? select
    Boolean? everything
    Boolean? mode
    Boolean? cardinality
    Boolean? median
    Boolean? nulls
    Int? jobs
    File? write_output_file
    Boolean? no_headers
    String? delimiter
  }
  command <<<
    xsv stats \
      ~{if defined(select) then ("--select " +  '"' + select + '"') else ""} \
      ~{if (everything) then "--everything" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (cardinality) then "--cardinality" else ""} \
      ~{if (median) then "--median" else ""} \
      ~{if (nulls) then "--nulls" else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if (no_headers) then "--no-headers" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  parameter_meta {
    select: "Select a subset of columns to compute stats for.\\nSee 'xsv select --help' for the format details.\\nThis is provided here because piping 'xsv select'\\ninto 'xsv stats' will disable the use of indexing."
    everything: "Show all statistics available."
    mode: "Show the mode.\\nThis requires storing all CSV data in memory."
    cardinality: "Show the cardinality.\\nThis requires storing all CSV data in memory."
    median: "Show the median.\\nThis requires storing all CSV data in memory."
    nulls: "Include NULLs in the population size for computing\\nmean and standard deviation."
    jobs: "The number of jobs to run in parallel.\\nThis works better when the given CSV data has\\nan index already created. Note that a file handle\\nis opened for each job.\\nWhen set to '0', the number of jobs is set to the\\nnumber of CPUs detected.\\n[default: 0]"
    write_output_file: "Write output to <file> instead of stdout."
    no_headers: "When set, the first row will NOT be interpreted\\nas column names. i.e., They will be included\\nin statistics."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}