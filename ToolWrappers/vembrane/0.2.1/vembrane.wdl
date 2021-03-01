version 1.0

task Vembrane {
  input {
    File? output_file_specified
    String? output_fmt
    String? annotation_key
    File? statistics
    Boolean? keep_unmatched
    String vcf
    String expression
  }
  command <<<
    vembrane \
      ~{vcf} \
      ~{expression} \
      ~{if defined(output_file_specified) then ("--output " +  '"' + output_file_specified + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(annotation_key) then ("--annotation-key " +  '"' + annotation_key + '"') else ""} \
      ~{if defined(statistics) then ("--statistics " +  '"' + statistics + '"') else ""} \
      ~{if (keep_unmatched) then "--keep-unmatched" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_specified: "Output file, if not specified, output is written to\\nSTDOUT."
    output_fmt: "Output format."
    annotation_key: "The INFO key for the annotation field."
    statistics: "Write statistics to this file."
    keep_unmatched: "Keep all annotations of a variant if at least one of\\nthem passes the expression.\\n"
    vcf: "The file containing the variants."
    expression: "Filter variants and annotations. If this removes all\\nannotations, the variant is removed as well."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_specified = "${in_output_file_specified}"
  }
}