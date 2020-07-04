version 1.0

task AggGenotype {
  input {
    String? regions
    Boolean? _outputfile_file
    Boolean? _outputtype_buzv
    Int? thread
    String chunk_one
  }
  command <<<
    agg genotype \
      ~{chunk_one} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{true="-o" false="" _outputfile_file} \
      ~{true="-O" false="" _outputtype_buzv} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""}
  >>>
  parameter_meta {
    regions: "region to genotype eg. chr1 or chr20:5000000-6000000"
    _outputfile_file: ",   --output-file <file>          output file name [stdout]"
    _outputtype_buzv: ",   --output-type <b|u|z|v>       b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    thread: "number of threads [0]"
    chunk_one: ""
  }
}