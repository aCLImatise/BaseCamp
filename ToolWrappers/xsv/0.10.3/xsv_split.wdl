version 1.0

task XsvSplit {
  input {
    Int? size
    Int? jobs
    File? write_output_file
    Boolean? no_headers
    String? delimiter
    String outdir
  }
  command <<<
    xsv split \
      ~{outdir} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if (no_headers) then "--no-headers" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    size: "The number of records to write into each chunk.\\n[default: 500]"
    jobs: "The number of spliting jobs to run in parallel.\\nThis only works when the given CSV data has\\nan index already created. Note that a file handle\\nis opened for each job.\\nWhen set to '0', the number of jobs is set to the\\nnumber of CPUs detected.\\n[default: 0]"
    write_output_file: "Write output to <file> instead of stdout."
    no_headers: "When set, the first row will NOT be interpreted\\nas column names. Otherwise, the first row will\\nappear in all chunks as the header row."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
    outdir: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}