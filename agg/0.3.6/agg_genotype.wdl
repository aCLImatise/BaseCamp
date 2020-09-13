version 1.0

task AggGenotype {
  input {
    Int? regions
    File? _outputfile_file
    Boolean? _outputtype_buzv
    Int? thread
    Int chunk_one
  }
  command <<<
    agg genotype \
      ~{chunk_one} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if (_outputfile_file) then "-o" else ""} \
      ~{if (_outputtype_buzv) then "-O" else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""}
  >>>
  parameter_meta {
    regions: "region to genotype eg. chr1 or chr20:5000000-6000000"
    _outputfile_file: ",   --output-file <file>          output file name [stdout]"
    _outputtype_buzv: ",   --output-type <b|u|z|v>       b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    thread: "number of threads [0]"
    chunk_one: ""
  }
  output {
    File out_stdout = stdout()
    File out__outputfile_file = "${in__outputfile_file}"
  }
}