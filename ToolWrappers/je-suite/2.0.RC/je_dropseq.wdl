version 1.0

task JeDropseq {
  input {
    Boolean? std_help
    String withqualityinreadnameboolean
    String like
    String maxninteger
    String becomes
    File path_dot
  }
  command <<<
    je dropseq \
      ~{withqualityinreadnameboolean} \
      ~{like} \
      ~{maxninteger} \
      ~{becomes} \
      ~{path_dot} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    withqualityinreadnameboolean: "WITH_QUALITY_IN_READNAME=Boolean"
    like: "'...:ATGCAT333423212322:...' instead of '...:ATGCAT:...'"
    maxninteger: "MAX_N=Integer"
    becomes: "'@D3FCO8P1:178:C1WLBACXX:7:1101:1836:1965:1:N:0:BARCODE'"
    path_dot: "Required. "
  }
  output {
    File out_stdout = stdout()
  }
}