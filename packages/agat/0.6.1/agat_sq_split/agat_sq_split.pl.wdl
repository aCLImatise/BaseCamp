version 1.0

task AgatSqSplitpl {
  input {
    File? string_input_gtfgff
    Int? interval
    String? feature_type
    File? string_output_file
    String agat_sq_split_do_tpl
  }
  command <<<
    agat_sq_split_pl \
      ~{agat_sq_split_do_tpl} \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(feature_type) then ("--feature_type " +  '"' + feature_type + '"') else ""} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file."
    interval: "Number of group of feature to include in each"
    feature_type: "top feature of the feature group. By default"
    string_output_file: "STRING: Output file. If no output file is specified, the output\\nwill be written to STDOUT. The result is in tabulate format."
    agat_sq_split_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_string_output_file = "${in_string_output_file}"
  }
}