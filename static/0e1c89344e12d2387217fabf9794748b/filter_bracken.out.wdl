version 1.0

task FilterBracken.out.py {
  input {
    String? input_file
    String? output_file
    Boolean? include
    Boolean? exclude
  }
  command <<<
    filter_bracken.out.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{true="--include" false="" include} \
      ~{true="--exclude" false="" exclude}
  >>>
  parameter_meta {
    input_file: "Input bracken OUTPUT file. [NOT the report file]"
    output_file: "Output bracken OUTPUT file."
    include: "[T_INCLUDE [T_INCLUDE ...]] List of taxonomy IDs to include in output [space- delimited] - default=All"
    exclude: "[T_EXCLUDE [T_EXCLUDE ...]] List of taxonomy IDs to exclude in output [space- delimited] - default=None"
  }
}