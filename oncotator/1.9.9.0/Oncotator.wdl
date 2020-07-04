version 1.0

task Oncotator {
  input {
    Boolean? var_0
    Boolean? var_1
    String? i
    String input_file
    String output_file
    String genome_build
  }
  command <<<
    Oncotator \
      ~{input_file} \
      ~{output_file} \
      ~{genome_build} \
      ~{true="-v" false="" var_0} \
      ~{true="-V" false="" var_1} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
    i: ""
    input_file: "Input file to be annotated. Type is specified through options."
    output_file: "Output file name of annotated file."
    genome_build: "Genome build. For example: hg19"
  }
}