version 1.0

task XsvJoin {
  input {
    Boolean? no_case
    Boolean? join_returns_infirst
    Boolean? returns_rows_insecond
    Boolean? full
    Boolean? cross
    Boolean? nulls
    File? write_output_file
    Boolean? no_headers
    String? delimiter
  }
  command <<<
    xsv join \
      ~{if (no_case) then "--no-case" else ""} \
      ~{if (join_returns_infirst) then "--left" else ""} \
      ~{if (returns_rows_insecond) then "--right" else ""} \
      ~{if (full) then "--full" else ""} \
      ~{if (cross) then "--cross" else ""} \
      ~{if (nulls) then "--nulls" else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if (no_headers) then "--no-headers" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  parameter_meta {
    no_case: "When set, joins are done case insensitively."
    join_returns_infirst: "Do a 'left outer' join. This returns all rows in\\nfirst CSV data set, including rows with no\\ncorresponding row in the second data set. When no\\ncorresponding row exists, it is padded out with\\nempty fields."
    returns_rows_insecond: "Do a 'right outer' join. This returns all rows in\\nsecond CSV data set, including rows with no\\ncorresponding row in the first data set. When no\\ncorresponding row exists, it is padded out with\\nempty fields. (This is the reverse of 'outer left'.)"
    full: "Do a 'full outer' join. This returns all rows in\\nboth data sets with matching records joined. If\\nthere is no match, the missing side will be padded\\nout with empty fields. (This is the combination of\\n'outer left' and 'outer right'.)"
    cross: "USE WITH CAUTION.\\nThis returns the cartesian product of the CSV\\ndata sets given. The number of rows return is\\nequal to N * M, where N and M correspond to the\\nnumber of rows in the given data sets, respectively."
    nulls: "When set, joins will work on empty fields.\\nOtherwise, empty fields are completely ignored.\\n(In fact, any row that has an empty field in the\\nkey specified is ignored.)"
    write_output_file: "Write output to <file> instead of stdout."
    no_headers: "When set, the first row will not be interpreted\\nas headers. (i.e., They are not searched, analyzed,\\nsliced, etc.)"
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}