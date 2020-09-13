version 1.0

task Stretcher {
  input {
    Boolean? data_file
    Boolean? gap_open
    Boolean? gap_extend
  }
  command <<<
    _stretcher \
      ~{if (data_file) then "-datafile" else ""} \
      ~{if (gap_open) then "-gapopen" else ""} \
      ~{if (gap_extend) then "-gapextend" else ""}
  >>>
  parameter_meta {
    data_file: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\\nThis is the scoring matrix file used when\\ncomparing sequences. By default it is the\\nfile 'EBLOSUM62' (for proteins) or the file\\n'EDNAFULL' (for nucleic sequences). These\\nfiles are found in the 'data' directory of\\nthe EMBOSS installation."
    gap_open: "integer    [12 for protein, 16 for nucleic] Gap penalty\\n(Positive integer)"
    gap_extend: "integer    [2 for protein, 4 for nucleic] Gap length\\npenalty (Positive integer)"
  }
  output {
    File out_stdout = stdout()
  }
}