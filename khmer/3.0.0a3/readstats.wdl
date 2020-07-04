version 1.0

task Readstats.py {
  input {
    Boolean? info
    File? output_file_stdout
    Boolean? csv
  }
  command <<<
    readstats.py \
      ~{true="--info" false="" info} \
      ~{if defined(output_file_stdout) then ("--output " +  '"' + output_file_stdout + '"') else ""} \
      ~{true="--csv" false="" csv}
  >>>
  parameter_meta {
    info: "print citation information"
    output_file_stdout: "output file for statistics; defaults to stdout. (default: <_io.TextIOWrapper name='<stdout>' mode='w' encoding='UTF-8'>)"
    csv: "Use the CSV format for the statistics, including column headers. (default: False)"
  }
}