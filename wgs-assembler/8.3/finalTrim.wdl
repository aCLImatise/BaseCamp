version 1.0

task FinalTrim {
  input {
    String eE
    String eE
    Boolean olOl
    Boolean ocOc
    Boolean nN
    String tT
  }
  command <<<
    finalTrim \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{true="-ol" false="" olOl} \
      ~{true="-oc" false="" ocOc} \
      ~{true="-n" false="" nN} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}