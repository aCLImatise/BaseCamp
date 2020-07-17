version 1.0

task BedtoolsOverlap {
  input {
    Boolean? input_file_use
    Boolean? cols
  }
  command <<<
    bedtools overlap \
      ~{true="-i" false="" input_file_use} \
      ~{true="-cols" false="" cols}
  >>>
  parameter_meta {
    input_file_use: "Input file. Use \"stdin\" for pipes."
    cols: "Specify the columns (1-based) for the starts and ends of the features for which you'd like to compute the overlap/distance. The columns must be listed in the following order:  start1,end1,start2,end2"
  }
}