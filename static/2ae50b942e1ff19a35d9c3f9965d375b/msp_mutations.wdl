version 1.0

task MspMutations {
  input {
    Boolean? header
    Float? precision
    String history_file
  }
  command <<<
    msp mutations \
      ~{history_file} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    header: "Print a header line in the output."
    precision: "The number of decimal places to print in records\\n"
    history_file: "The msprime history file in HDF5 format"
  }
  output {
    File out_stdout = stdout()
  }
}