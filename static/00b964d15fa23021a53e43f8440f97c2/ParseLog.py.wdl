version 1.0

task ParseLogpy {
  input {
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    String? delim
    Array[String] list_parse_default
    Array[String] list_collect_sequence
    String table
  }
  command <<<
    ParseLog_py \
      ~{table} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(list_parse_default) then ("-l " +  '"' + list_parse_default + '"') else ""} \
      ~{if defined(list_collect_sequence) then ("-f " +  '"' + list_collect_sequence + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    explicit_output_file: "Explicit output file name(s). Note, this argument\\ncannot be used with the --failed, --outdir, or\\n--outname arguments. If unspecified, then the output\\nfilename will be based on the input filename(s).\\n(default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    list_parse_default: "List of log files to parse. (default: None)"
    list_collect_sequence: "List of fields to collect. The sequence identifier may\\nbe specified using the hidden field name \\\"ID\\\".\\n(default: None)"
    table: "tab delimited table of the selected annotations."
  }
  output {
    File out_stdout = stdout()
  }
}