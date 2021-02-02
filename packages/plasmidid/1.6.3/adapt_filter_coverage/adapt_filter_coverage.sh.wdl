version 1.0

task AdaptFilterCoveragesh {
  input {
    File? output_directory_optional
  }
  command <<<
    adapt_filter_coverage_sh \
      ~{if defined(output_directory_optional) then ("-i " +  '"' + output_directory_optional + '"') else ""}
  >>>
  parameter_meta {
    output_directory_optional: "file\\n-o output directory (optional). By default the file is replaced in the same location\\n-c percentage value to filter >= values. If not supplied, all records will be outputted\\n-s string to ad at the end of the outputted file (list of accession numbers)\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_optional = "${in_output_directory_optional}"
  }
}