version 1.0

task Plotcon {
  input {
    Boolean? winsize
    Boolean? graph
    Boolean? score_file
  }
  command <<<
    plotcon \
      ~{if (winsize) then "-winsize" else ""} \
      ~{if (graph) then "-graph" else ""} \
      ~{if (score_file) then "-scorefile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    winsize: "integer    [4] Number of columns to average alignment\\nquality over. The larger this value is, the\\nsmoother the plot will be. (Any integer\\nvalue)"
    graph: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    score_file: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\\nThis is the scoring matrix file used when\\ncomparing sequences. By default it is the\\nfile 'EBLOSUM62' (for proteins) or the file\\n'EDNAFULL' (for nucleic sequences). These\\nfiles are found in the 'data' directory of\\nthe EMBOSS installation."
  }
  output {
    File out_stdout = stdout()
  }
}