version 1.0

task XsvFrequency {
  input {
    String? select
    Int? limit
    Boolean? asc
    Boolean? no_nulls
    Int? jobs
    File? write_output_file
    Boolean? no_headers
    String? delimiter
  }
  command <<<
    xsv frequency \
      ~{if defined(select) then ("--select " +  '"' + select + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (asc) then "--asc" else ""} \
      ~{if (no_nulls) then "--no-nulls" else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if (no_headers) then "--no-headers" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    select: "Select a subset of columns to compute frequencies\\nfor. See 'xsv select --help' for the format\\ndetails. This is provided here because piping 'xsv\\nselect' into 'xsv frequency' will disable the use\\nof indexing."
    limit: "Limit the frequency table to the N most common\\nitems. Set to '0' to disable a limit.\\n[default: 10]"
    asc: "Sort the frequency tables in ascending order by\\ncount. The default is descending order."
    no_nulls: "Don't include NULLs in the frequency table."
    jobs: "The number of jobs to run in parallel.\\nThis works better when the given CSV data has\\nan index already created. Note that a file handle\\nis opened for each job.\\nWhen set to '0', the number of jobs is set to the\\nnumber of CPUs detected.\\n[default: 0]"
    write_output_file: "Write output to <file> instead of stdout."
    no_headers: "When set, the first row will NOT be included\\nin the frequency table. Additionally, the 'field'\\ncolumn will be 1-based indices instead of header\\nnames."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}