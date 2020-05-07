version 1.0

task PipitsRereplicate {
  input {
    String iI
    String oO
    String ucUc
    String? reReReplicate
    String? sequencesSequences
  }
  command <<<
    pipits_rereplicate \
      ~{reReReplicate} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(ucUc) then ("--uc " +  '"' + ucUc + '"') else ""} \
      ~{sequencesSequences}
  >>>
}