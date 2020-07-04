version 1.0

task IntersectFiles.py {
  input {
    String? threads_to_run
    String? file_lookup_from
    String? a_delim
    String? a_col
    String? a_header
    String? file_lookup_in
    String? b_delim
    String? b_col
    String? b_header
    String? b_lookup
    Boolean? strict
    Boolean? file_write_results
    String? function
    String? colname
    String? a_regex
    String? b_regex
  }
  command <<<
    intersectFiles.py \
      ~{if defined(threads_to_run) then ("-p " +  '"' + threads_to_run + '"') else ""} \
      ~{if defined(file_lookup_from) then ("-a " +  '"' + file_lookup_from + '"') else ""} \
      ~{if defined(a_delim) then ("--adelim " +  '"' + a_delim + '"') else ""} \
      ~{if defined(a_col) then ("--acol " +  '"' + a_col + '"') else ""} \
      ~{if defined(a_header) then ("--aheader " +  '"' + a_header + '"') else ""} \
      ~{if defined(file_lookup_in) then ("-b " +  '"' + file_lookup_in + '"') else ""} \
      ~{if defined(b_delim) then ("--bdelim " +  '"' + b_delim + '"') else ""} \
      ~{if defined(b_col) then ("--bcol " +  '"' + b_col + '"') else ""} \
      ~{if defined(b_header) then ("--bheader " +  '"' + b_header + '"') else ""} \
      ~{if defined(b_lookup) then ("--blookup " +  '"' + b_lookup + '"') else ""} \
      ~{true="--strict" false="" strict} \
      ~{true="-o" false="" file_write_results} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{if defined(colname) then ("--colname " +  '"' + colname + '"') else ""} \
      ~{if defined(a_regex) then ("--aregex " +  '"' + a_regex + '"') else ""} \
      ~{if defined(b_regex) then ("--bregex " +  '"' + b_regex + '"') else ""}
  >>>
  parameter_meta {
    threads_to_run: "Threads to run"
    file_lookup_from: "This is the file to lookup values from."
    a_delim: "The delimiter for fields."
    a_col: "The column of interest (default: 1). Can be a column name."
    a_header: "The number of headers lines (default: 1)."
    file_lookup_in: "This is the file to lookup values in."
    b_delim: "The delimiter for fields."
    b_col: "The column of interest (default: 1). Can be a column name."
    b_header: "The number of headers lines (default: 1)."
    b_lookup: "The column to take entries from in file b."
    strict: "For numeric operations, fail if types are incorrect (converting NA to a float for instance)."
    file_write_results: "[OUT], --out [OUT] The file to write results to. Leave blank for stdout,"
    function: "The function to apply to found entries."
    colname: "The column name to give the new appended value. Defaults to function chosen"
    a_regex: "An optional regex pattern for matching columns in file a."
    b_regex: "An optional regex pattern for matching columns in file b."
  }
}