version 1.0

task GetConservedRegions.pl {
  input {
    Boolean consCons
    String pP
    Boolean keepKeepExons
  }
  command <<<
    getConservedRegions.pl \
      ~{true="-cons" false="" consCons} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-keepExons" false="" keepKeepExons}
  >>>
}