version 1.0

task Wordfinder {
  input {
    Boolean? gap_open
    Boolean? gap_extend
    Boolean? data_file
    Boolean? width
    Boolean? word_len
    Boolean? limit_match
    Boolean? limit_align
    Boolean? low_match
    Boolean? low_align
    Boolean? errfile
    String to
  }
  command <<<
    wordfinder \
      ~{to} \
      ~{if (gap_open) then "-gapopen" else ""} \
      ~{if (gap_extend) then "-gapextend" else ""} \
      ~{if (data_file) then "-datafile" else ""} \
      ~{if (width) then "-width" else ""} \
      ~{if (word_len) then "-wordlen" else ""} \
      ~{if (limit_match) then "-limitmatch" else ""} \
      ~{if (limit_align) then "-limitalign" else ""} \
      ~{if (low_match) then "-lowmatch" else ""} \
      ~{if (low_align) then "-lowalign" else ""} \
      ~{if (errfile) then "-errfile" else ""}
  >>>
  parameter_meta {
    gap_open: "float      [10.0 for any sequence type] Gap opening\\npenalty (Number from 0.000 to 1000.000)"
    gap_extend: "float      [0.5 for any sequence type] Gap extension\\npenalty (Number from 0.000 to 10.000)"
    data_file: "matrixf    [EBLOSUM62 for protein, EDNAFULL for DNA]\\nThis is the scoring matrix file used when\\ncomparing sequences. By default it is the\\nfile 'EBLOSUM62' (for proteins) or the file\\n'EDNAFULL' (for nucleic sequences). These\\nfiles are found in the 'data' directory of\\nthe EMBOSS installation."
    width: "integer    [16] Alignment width (Integer 1 or more)"
    word_len: "integer    [6] Word length for initial matching\\n(Integer 3 or more)"
    limit_match: "integer    [0] Maximum match score (zero for no limit)\\n(Integer 0 or more)"
    limit_align: "integer    [0] Maximum alignment length (zero for no\\nlimit) (Integer 0 or more)"
    low_match: "integer    [0] Minimum match score (zero for no limit)\\n(Integer 0 or more)"
    low_align: "integer    [0] Minimum alignment length (zero for no\\nlimit) (Integer 0 or more)"
    errfile: "outfile    [wordfinder.error] Error file to be written"
    to: "Advanced (Unprompted) qualifiers: (none)"
  }
  output {
    File out_stdout = stdout()
  }
}