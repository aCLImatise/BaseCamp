version 1.0

task SequenzaUtilsSeqzMerge {
  input {
    String outputOutput
    String tabTabIx
  }
  command <<<
    sequenza-utils seqz_merge \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(tabTabIx) then ("--tabix " +  '"' + tabTabIx + '"') else ""}
  >>>
}