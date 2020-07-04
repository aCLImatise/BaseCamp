version 1.0

task Sexdeterrmine {
  input {
    String? input_samtools_depth
    String? sample_list
    Boolean? v
  }
  command <<<
    sexdeterrmine \
      ~{if defined(input_samtools_depth) then ("--Input " +  '"' + input_samtools_depth + '"') else ""} \
      ~{if defined(sample_list) then ("--SampleList " +  '"' + sample_list + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    input_samtools_depth: "The input samtools depth file. Omit to read from stdin."
    sample_list: "A list of samples/bams that were in the depth file. One per line. Should be in the order of the samtools depth output."
    v: ""
  }
}