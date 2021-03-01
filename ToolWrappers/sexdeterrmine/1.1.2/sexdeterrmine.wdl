version 1.0

task Sexdeterrmine {
  input {
    File? input_samtools_depth
    File? sample_list
    Boolean? v
  }
  command <<<
    sexdeterrmine \
      ~{if defined(input_samtools_depth) then ("--Input " +  '"' + input_samtools_depth + '"') else ""} \
      ~{if defined(sample_list) then ("--SampleList " +  '"' + sample_list + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_samtools_depth: "The input samtools depth file. Omit to read from\\nstdin."
    sample_list: "A list of samples/bams that were in the depth file.\\nOne per line. Should be in the order of the samtools\\ndepth output."
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_sample_list = "${in_sample_list}"
  }
}