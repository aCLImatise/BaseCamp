version 1.0

task ComputeMatrixOperationsFilterStrand {
  input {
    String? matrix_file
    String? out_filename
    Boolean? strand
    String example
    String usage
  }
  command <<<
    computeMatrixOperations filterStrand \
      ~{example} \
      ~{usage} \
      ~{if defined(matrix_file) then ("--matrixFile " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{true="--strand" false="" strand}
  >>>
  parameter_meta {
    matrix_file: "Matrix file from the computeMatrix tool. (default: None)"
    out_filename: "Output file name (default: None)"
    strand: "{+,-,.}, -s {+,-,.} Strand (default: None)"
    example: ""
    usage: ""
  }
}