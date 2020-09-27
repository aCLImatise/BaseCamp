version 1.0

task Readstatspy {
  input {
    Boolean? info
    File? output_file_statistics
    Boolean? csv
    String filenames
  }
  command <<<
    readstats_py \
      ~{filenames} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(output_file_statistics) then ("--output " +  '"' + output_file_statistics + '"') else ""} \
      ~{if (csv) then "--csv" else ""}
  >>>
  parameter_meta {
    info: "print citation information"
    output_file_statistics: "output file for statistics; defaults to stdout.\\n(default: <_io.TextIOWrapper name='<stdout>' mode='w'\\nencoding='utf-8'>)"
    csv: "Use the CSV format for the statistics, including\\ncolumn headers. (default: False)"
    filenames: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_statistics = "${in_output_file_statistics}"
  }
}