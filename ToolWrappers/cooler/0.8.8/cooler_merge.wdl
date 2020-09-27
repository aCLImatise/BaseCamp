version 1.0

task CoolerMerge {
  input {
    Int? chunksize
    String? field
    String output_dot
  }
  command <<<
    cooler merge \
      ~{output_dot} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""}
  >>>
  parameter_meta {
    chunksize: "Size of the merge buffer in number of pixel table"
    field: "Specify the names of value columns to merge as\\n'<name>'. Repeat the `--field` option for each one.\\nUse '<name>,dtype=<dtype>' to specify the dtype.\\nInclude ',agg=<agg>' to specify an aggregation\\nfunction different from 'sum'."
    output_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}