version 1.0

task VdbDiff.2.10.7 {
  input {
    String? rows
    String? columns
    String? table
    Boolean? progress
    Int? max_err
    Boolean? intersect
    String? exclude
    Boolean? col_by_col
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String src_one_path
    String src_two_path
  }
  command <<<
    vdb-diff.2.10.7 \
      ~{src_one_path} \
      ~{src_two_path} \
      ~{if defined(rows) then ("--rows " +  '"' + rows + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{true="--progress" false="" progress} \
      ~{if defined(max_err) then ("--maxerr " +  '"' + max_err + '"') else ""} \
      ~{true="--intersect" false="" intersect} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{true="--col-by-col" false="" col_by_col} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    rows: "set of rows to be comparend (default all) "
    columns: "set of columns to be compared (default  all) "
    table: "name of table (in case of database to be  compared "
    progress: "show progress in percent "
    max_err: "max errors im comparing (default 1) "
    intersect: "intersect column-set from both runs "
    exclude: "exclude these columns from comapring "
    col_by_col: "exclude these columns from comapring "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    src_one_path: ""
    src_two_path: ""
  }
}