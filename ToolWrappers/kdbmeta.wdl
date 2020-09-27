version 1.0

task Kdbmeta {
  input {
    String? table
    Boolean? unsigned
    Boolean? read_only
    String? output_type_one
    File? ngc
    Boolean? verbose
    Boolean? quiet
    File? option_file
    File path_to_database
    File path_to_table
    File path_to_column
    String accession
    String name
    File path_slash_name
    String quit_dot
    File file_dot
  }
  command <<<
    kdbmeta \
      ~{path_to_database} \
      ~{path_to_table} \
      ~{path_to_column} \
      ~{accession} \
      ~{name} \
      ~{path_slash_name} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if (unsigned) then "--unsigned" else ""} \
      ~{if (read_only) then "--read-only" else ""} \
      ~{if defined(output_type_one) then ("--output " +  '"' + output_type_one + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    table: "table-name"
    unsigned: "print numeric values as unsigned"
    read_only: "operate in read-only mode"
    output_type_one: "Output type: one of (xml text):  whether to\\ngenerate well-formed XML. Default: xml\\n(well-formed)"
    ngc: "path to ngc file"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    path_to_database: "access database metadata"
    path_to_table: "access table metadata"
    path_to_column: "access column metadata"
    accession: "sra global access id"
    name: "a named root node and children"
    path_slash_name: "an internal node and children"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "kdbmeta : 2.10.8"
  }
  output {
    File out_stdout = stdout()
  }
}