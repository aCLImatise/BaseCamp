version 1.0

task AdaptFilterCoveragesh {
  input {
    File? i
    File? directory_optional_default
    String? value_filter_values
    File? ad_end_outputted
    String? usage_message
  }
  command <<<
    adapt_filter_coverage_sh \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(value_filter_values) then ("-c " +  '"' + value_filter_values + '"') else ""} \
      ~{if defined(ad_end_outputted) then ("-s " +  '"' + ad_end_outputted + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i: "file"
    directory_optional_default: "directory (optional). By default the file is replaced in the same location"
    value_filter_values: "value to filter >= values. If not supplied, all records will be outputted"
    ad_end_outputted: "to ad at the end of the outputted file (list of accession numbers)"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}