version 1.0

task AggGenotype {
  input {
    Int? regions
    File? output_file
    String? output_type
    Int? thread
    Int chunk_one
  }
  command <<<
    agg genotype \
      ~{chunk_one} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    regions: "region to genotype eg. chr1 or chr20:5000000-6000000"
    output_file: "output file name [stdout]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    thread: "number of threads [0]"
    chunk_one: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}