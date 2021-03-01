version 1.0

task AggAnno {
  input {
    Boolean? include
    Boolean? regions
    File? output_file
    String? output_type
    String input_dot_bcf
  }
  command <<<
    agg anno \
      ~{input_dot_bcf} \
      ~{if (include) then "--include" else ""} \
      ~{if (regions) then "--regions" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    include: "filters to apply eg. -i 'QUAL>=10 && DP<100000 && HWE<10'"
    regions: "a set of variants that are trusted (eg. 1000G)"
    output_file: "output file name [stdout]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed"
    input_dot_bcf: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}