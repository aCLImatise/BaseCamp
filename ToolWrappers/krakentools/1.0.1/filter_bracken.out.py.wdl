version 1.0

task FilterBrackenoutpy {
  input {
    File? input_file
    File? output_file
    Boolean? include
    Boolean? exclude
  }
  command <<<
    filter_bracken_out_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (include) then "--include" else ""} \
      ~{if (exclude) then "--exclude" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0"
  }
  parameter_meta {
    input_file: "Input bracken OUTPUT file. [NOT the report file]"
    output_file: "Output bracken OUTPUT file."
    include: "[T_INCLUDE ...]\\nList of taxonomy IDs to include in output [space-\\ndelimited] - default=All"
    exclude: "[T_EXCLUDE ...]\\nList of taxonomy IDs to exclude in output [space-\\ndelimited] - default=None\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}