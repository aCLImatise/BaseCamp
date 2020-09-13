version 1.0

task Ptdump {
  input {
    Boolean? verbose
    Boolean? dump
    Boolean? show_attrs
    Boolean? sort
    Boolean? col_info
    Boolean? idx_info
    Int? range
  }
  command <<<
    ptdump \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if (show_attrs) then "--showattrs" else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if (col_info) then "--colinfo" else ""} \
      ~{if (idx_info) then "--idxinfo" else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""}
  >>>
  parameter_meta {
    verbose: "dump more metainformation on nodes"
    dump: "dump data information on leaves"
    show_attrs: "show attributes in nodes (only useful when -v or -d\\nare active)"
    sort: "sort output by node name"
    col_info: "show info of columns in tables (only useful when -v or"
    idx_info: "show info of indexed columns (only useful when -v or"
    range: "select a RANGE of rows (in the form \\\"start,stop,step\\\")\\nduring the copy of *all* the leaves. Default values\\nare \\\"None,None,1\\\", which means a copy of all the rows.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}