version 1.0

task Dotmatcher {
  input {
    Boolean? matrix_file
    Boolean? window_size
    Boolean? threshold
    Boolean? stretch
  }
  command <<<
    dotmatcher \
      ~{if (matrix_file) then "-matrixfile" else ""} \
      ~{if (window_size) then "-windowsize" else ""} \
      ~{if (threshold) then "-threshold" else ""} \
      ~{if (stretch) then "-stretch" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix_file: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\\nThis is the scoring matrix file used when\\ncomparing sequences. By default it is the\\nfile 'EBLOSUM62' (for proteins) or the file\\n'EDNAFULL' (for nucleic sequences). These\\nfiles are found in the 'data' directory of\\nthe EMBOSS installation."
    window_size: "integer    [10] Window size over which to test\\nthreshold (Integer 3 or more)"
    threshold: "integer    [23] Threshold (Integer 0 or more)"
    stretch: "toggle     [N] Display a non-proportional graph"
  }
  output {
    File out_stdout = stdout()
  }
}