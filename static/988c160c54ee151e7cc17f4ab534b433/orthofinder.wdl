version 1.0

task Orthofinder {
  input {
    Boolean xX
    String nN
    String oO
    Boolean opOp
    Boolean ogOg
    Boolean osOs
    Boolean oaOa
    Boolean otOt
    Boolean bB
    String fgFg
    String ftFt
  }
  command <<<
    orthofinder \
      ~{true="-X" false="" xX} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-op" false="" opOp} \
      ~{true="-og" false="" ogOg} \
      ~{true="-os" false="" osOs} \
      ~{true="-oa" false="" oaOa} \
      ~{true="-ot" false="" otOt} \
      ~{true="-b" false="" bB} \
      ~{if defined(fgFg) then ("-fg " +  '"' + fgFg + '"') else ""} \
      ~{if defined(ftFt) then ("-ft " +  '"' + ftFt + '"') else ""}
  >>>
}