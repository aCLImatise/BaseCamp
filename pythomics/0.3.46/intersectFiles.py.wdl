version 1.0

task IntersectFilespy {
  input {
    String? threads_to_run
    File? file_lookup_from
    String? a_delim
    Int? a_col
    File? file_lookup_in
    String? b_delim
    Int? b_col
    File? b_lookup
    Boolean? strict
    File? file_write_results
    String? function
    String? colname
    File? a_regex
    String a_dot
  }
  command <<<
    intersectFiles_py \
      ~{a_dot} \
      ~{if defined(threads_to_run) then ("-p " +  '"' + threads_to_run + '"') else ""} \
      ~{if defined(file_lookup_from) then ("-a " +  '"' + file_lookup_from + '"') else ""} \
      ~{if defined(a_delim) then ("--adelim " +  '"' + a_delim + '"') else ""} \
      ~{if defined(a_col) then ("--acol " +  '"' + a_col + '"') else ""} \
      ~{if defined(file_lookup_in) then ("-b " +  '"' + file_lookup_in + '"') else ""} \
      ~{if defined(b_delim) then ("--bdelim " +  '"' + b_delim + '"') else ""} \
      ~{if defined(b_col) then ("--bcol " +  '"' + b_col + '"') else ""} \
      ~{if defined(b_lookup) then ("--blookup " +  '"' + b_lookup + '"') else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (file_write_results) then "-o" else ""} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{if defined(colname) then ("--colname " +  '"' + colname + '"') else ""} \
      ~{if defined(a_regex) then ("--aregex " +  '"' + a_regex + '"') else ""}
  >>>
  parameter_meta {
    threads_to_run: "Threads to run"
    file_lookup_from: "This is the file to lookup values from."
    a_delim: "The delimiter for fields."
    a_col: "The column of interest (default: 1). Can be a column"
    file_lookup_in: "This is the file to lookup values in."
    b_delim: "The delimiter for fields."
    b_col: "The column of interest (default: 1). Can be a column"
    b_lookup: "The column to take entries from in file b."
    strict: "For numeric operations, fail if types are incorrect\\n(converting NA to a float for instance)."
    file_write_results: "[OUT], --out [OUT]\\nThe file to write results to. Leave blank for stdout,"
    function: "The function to apply to found entries."
    colname: "The column name to give the new appended value.\\nDefaults to function chosen"
    a_regex: "An optional regex pattern for matching columns in file"
    a_dot: "--bregex BREGEX       An optional regex pattern for matching columns in file"
  }
  output {
    File out_stdout = stdout()
    File out_file_write_results = "${in_file_write_results}"
  }
}