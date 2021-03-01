version 1.0

task Merger {
  input {
    Boolean? data_file
    Boolean? gap_open
    Boolean? gap_extend
  }
  command <<<
    merger \
      ~{if (data_file) then "-datafile" else ""} \
      ~{if (gap_open) then "-gapopen" else ""} \
      ~{if (gap_extend) then "-gapextend" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data_file: "matrixf    [EBLOSUM62 for protein, EDNAFULL for DNA]\\nThis is the scoring matrix file used when\\ncomparing sequences. By default it is the\\nfile 'EBLOSUM62' (for proteins) or the file\\n'EDNAFULL' (for nucleic sequences). These\\nfiles are found in the 'data' directory of\\nthe EMBOSS installation."
    gap_open: "float      [@($(acdprotein)? 50.0 : 50.0 )] Gap opening\\npenalty (Number from 0.000 to 100.000)"
    gap_extend: "float      [@($(acdprotein)? 5.0 : 5.0)] Gap extension\\npenalty (Number from 0.000 to 10.000)"
  }
  output {
    File out_stdout = stdout()
  }
}