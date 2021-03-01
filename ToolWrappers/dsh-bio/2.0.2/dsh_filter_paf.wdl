version 1.0

task Dshfilterpaf {
  input {
    Boolean? about
    Boolean? query
    Boolean? target
    Boolean? mapping_quality
    Boolean? script
    Boolean? input_paf_file
    File? output_paf_file
  }
  command <<<
    dsh_filter_paf \
      ~{if (about) then "--about" else ""} \
      ~{if (query) then "--query" else ""} \
      ~{if (target) then "--target" else ""} \
      ~{if (mapping_quality) then "--mapping-quality" else ""} \
      ~{if (script) then "--script" else ""} \
      ~{if (input_paf_file) then "--input-paf-file" else ""} \
      ~{if (output_paf_file) then "--output-paf-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.2--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    query: "[class java.lang.String]  filter by query range, specify as queryName:start-end in 0-based coordindates [optional]"
    target: "[class java.lang.String]  filter by target range, specify as targetName:start-end in 0-based coordindates [optional]"
    mapping_quality: "[class java.lang.Integer]  filter by mapping quality [optional]"
    script: "[class java.lang.String]  filter by script, eval against r [optional]"
    input_paf_file: "[class java.io.File]  input PAF file, default stdin [optional]"
    output_paf_file: "[class java.io.File]  output PAF file, default stdout [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_paf_file = "${in_output_paf_file}"
  }
}