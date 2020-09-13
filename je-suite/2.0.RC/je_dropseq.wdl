version 1.0

task JeDropseq {
  input {
    Boolean? displays_options_specific
    Boolean? std_help
    Boolean? displays_options_and
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
      ~{if (displays_options_specific) then "-h" else ""} \
      ~{if (std_help) then "--stdhelp" else ""} \
      ~{if (displays_options_and) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool."
    std_help: ""
    displays_options_and: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
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