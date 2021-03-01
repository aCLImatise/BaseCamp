version 1.0

task Supermatcher {
  input {
    Boolean? gap_open
    Boolean? gap_extend
    Boolean? data_file
    Boolean? min_score
    Boolean? width
    Boolean? word_len
    Boolean? errfile
  }
  command <<<
    _supermatcher \
      ~{if (gap_open) then "-gapopen" else ""} \
      ~{if (gap_extend) then "-gapextend" else ""} \
      ~{if (data_file) then "-datafile" else ""} \
      ~{if (min_score) then "-minscore" else ""} \
      ~{if (width) then "-width" else ""} \
      ~{if (word_len) then "-wordlen" else ""} \
      ~{if (errfile) then "-errfile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gap_open: "float      [10.0 for any sequence type] Gap opening\\npenalty (Number from 0.000 to 100.000)"
    gap_extend: "float      [0.5 for any sequence type] Gap extension\\npenalty (Number from 0.000 to 10.000)"
    data_file: "matrixf    [EBLOSUM62 for protein, EDNAFULL for DNA]\\nThis is the scoring matrix file used when\\ncomparing sequences. By default it is the\\nfile 'EBLOSUM62' (for proteins) or the file\\n'EDNAFULL' (for nucleic sequences). These\\nfiles are found in the 'data' directory of\\nthe EMBOSS installation."
    min_score: "float      [0] Minimum alignment score to report an\\nalignment. (Number 0.000 or more)"
    width: "integer    [16] Alignment width (Integer 1 or more)"
    word_len: "integer    [6] Word length for initial matching\\n(Integer 3 or more)"
    errfile: "outfile    [supermatcher.error] Error file to be\\nwritten to for failed alignments"
  }
  output {
    File out_stdout = stdout()
  }
}