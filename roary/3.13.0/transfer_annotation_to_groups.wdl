version 1.0

task TransferAnnotationToGroups {
  input {
    String oO
    String gG
    Boolean vV
  }
  command <<<
    transfer_annotation_to_groups \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}