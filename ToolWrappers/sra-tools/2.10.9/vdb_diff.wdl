version 1.0

task Vdbdiff {
  input {
    String? rows
    String? columns
    String? table
    Int? max_err
    Boolean? intersect
    String? exclude
    Boolean? col_by_col
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String compared
    String quit_dot
    File file_dot
  }
  command <<<
    vdb_diff \
      ~{compared} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if defined(rows) then ("--rows " +  '"' + rows + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(max_err) then ("--maxerr " +  '"' + max_err + '"') else ""} \
      ~{if (intersect) then "--intersect" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (col_by_col) then "--col-by-col" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
  parameter_meta {
    rows: "set of rows to be comparend (default all)"
    columns: "set of columns to be compared (default\\nall)"
    table: "name of table (in case of database to be"
    max_err: "max errors im comparing (default 1)"
    intersect: "intersect column-set from both runs"
    exclude: "exclude these columns from comapring"
    col_by_col: "exclude these columns from comapring"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    compared: "-p|--progress                    show progress in percent "
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "vdb-diff : 2.10.9"
  }
  output {
    File out_stdout = stdout()
  }
}