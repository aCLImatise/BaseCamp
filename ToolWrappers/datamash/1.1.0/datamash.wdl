version 1.0

task Datamash {
  input {
    Boolean? full
    String? group
    Boolean? header_in
    Boolean? header_out
    Boolean? headers
    Boolean? ignore_case
    Boolean? sort
    Boolean? no_strict
    String? filler
    String? field_separator
    Boolean? narm
    Boolean? whitespace
    Boolean? zero_terminated
    String op
    String? fld
  }
  command <<<
    datamash \
      ~{op} \
      ~{fld} \
      ~{if (full) then "--full" else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if (header_in) then "--header-in" else ""} \
      ~{if (header_out) then "--header-out" else ""} \
      ~{if (headers) then "--headers" else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if (no_strict) then "--no-strict" else ""} \
      ~{if defined(filler) then ("--filler " +  '"' + filler + '"') else ""} \
      ~{if defined(field_separator) then ("--field-separator " +  '"' + field_separator + '"') else ""} \
      ~{if (narm) then "--narm" else ""} \
      ~{if (whitespace) then "--whitespace" else ""} \
      ~{if (zero_terminated) then "--zero-terminated" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    full: "print entire input line before op results\\n(default: print only the grouped keys)"
    group: "[,Y,Z]       group via fields X,[Y,Z];\\nequivalent to primary operation 'groupby'"
    header_in: "first input line is column headers"
    header_out: "print column headers as first line"
    headers: "same as '--header-in --header-out'"
    ignore_case: "ignore upper/lower case when comparing text;\\nthis affects grouping, and string operations"
    sort: "sort the input before grouping; this removes the\\nneed to manually pipe the input through 'sort'"
    no_strict: "allow lines with varying number of fields"
    filler: "fill missing values with X (default %s)"
    field_separator: "use X instead of TAB as field delimiter"
    narm: "skip NA/NaN values"
    whitespace: "use whitespace (one or more spaces and/or tabs)\\nfor field delimiters"
    zero_terminated: "end lines with 0 byte, not newline"
    op: ""
    fld: ""
  }
  output {
    File out_stdout = stdout()
  }
}