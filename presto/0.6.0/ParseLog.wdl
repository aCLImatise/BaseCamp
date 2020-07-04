version 1.0

task ParseLog.py {
  input {
    Array[String] explicit_output_file
    String? outdir
    String? out_name
    String? delim
    Array[String] list_log_files
    Array[String] list_collect_identifier
    String table
  }
  command <<<
    ParseLog.py \
      ~{table} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(list_log_files) then ("-l " +  '"' + list_log_files + '"') else ""} \
      ~{if defined(list_collect_identifier) then ("-f " +  '"' + list_collect_identifier + '"') else ""}
  >>>
  parameter_meta {
    explicit_output_file: "Explicit output file name(s). Note, this argument cannot be used with the --failed, --outdir, or --outname arguments. If unspecified, then the output filename will be based on the input filename(s). (default: None)"
    outdir: "Specify to changes the output directory to the location specified. The input file directory is used if this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed output file to the string specified. May not be specified with multiple input files. (default: None)"
    delim: "DELIMITER DELIMITER A list of the three delimiters that separate annotation blocks, field names and values, and values within a field, respectively. (default: ('|', '=', ','))"
    list_log_files: "List of log files to parse. (default: None)"
    list_collect_identifier: "List of fields to collect. The sequence identifier may be specified using the hidden field name \"ID\". (default: None)"
    table: "tab delimited table of the selected annotations."
  }
}