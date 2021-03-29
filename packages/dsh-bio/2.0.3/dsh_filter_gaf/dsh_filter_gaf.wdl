version 1.0

task Dshfiltergaf {
  input {
    Boolean? about
    Boolean? query
    Boolean? mapping_quality
    Boolean? script
    Boolean? input_gaf_file
    File? output_gaf_file
  }
  command <<<
    dsh_filter_gaf \
      ~{if (about) then "--about" else ""} \
      ~{if (query) then "--query" else ""} \
      ~{if (mapping_quality) then "--mapping-quality" else ""} \
      ~{if (script) then "--script" else ""} \
      ~{if (input_gaf_file) then "--input-gaf-file" else ""} \
      ~{if (output_gaf_file) then "--output-gaf-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.3--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    query: "[class java.lang.String]  filter by query range, specify as queryName:start-end in 0-based coordindates [optional]"
    mapping_quality: "[class java.lang.Integer]  filter by mapping quality [optional]"
    script: "[class java.lang.String]  filter by script, eval against r [optional]"
    input_gaf_file: "[class java.io.File]  input GAF file, default stdin [optional]"
    output_gaf_file: "[class java.io.File]  output GAF file, default stdout [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_gaf_file = "${in_output_gaf_file}"
  }
}