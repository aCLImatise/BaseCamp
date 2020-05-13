version 1.0

task OverlapStore {
  input {
    Boolean dD
    Boolean qQ
    Boolean pP
    Boolean gG
    Boolean bB
    String eE
    Int lL
    Boolean d5D5
    Boolean d3D3
    Boolean dcDc
    Boolean dcDc
    String bB
    String eE
    Boolean vV
    String qQ
    String pP
  }
  command <<<
    overlapStore \
      ~{true="-d" false="" dD} \
      ~{true="-q" false="" qQ} \
      ~{true="-p" false="" pP} \
      ~{true="-G" false="" gG} \
      ~{true="-B" false="" bB} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{true="-d5" false="" d5D5} \
      ~{true="-d3" false="" d3D3} \
      ~{true="-dC" false="" dcDc} \
      ~{true="-dc" false="" dcDc} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}