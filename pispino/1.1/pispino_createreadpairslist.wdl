version 1.0

task PispinoCreatereadpairslist {
  input {
    String iI
    File oO
    String labelLabelAddCEnd
    String labelLabelAddCFront
    String labelLabelReIndexC
    Boolean fF
  }
  command <<<
    pispino_createreadpairslist \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(labelLabelAddCEnd) then ("--label-add-c-end " +  '"' + labelLabelAddCEnd + '"') else ""} \
      ~{if defined(labelLabelAddCFront) then ("--label-add-c-front " +  '"' + labelLabelAddCFront + '"') else ""} \
      ~{if defined(labelLabelReIndexC) then ("--label-reindex-c " +  '"' + labelLabelReIndexC + '"') else ""} \
      ~{true="-f" false="" fF}
  >>>
}