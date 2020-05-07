version 1.0

task Sam2psl.py {
  input {
    Boolean readReadSeq
    String replaceReplaceReadIds
    String outputOutput
  }
  command <<<
    sam2psl.py \
      ~{true="--read-seq" false="" readReadSeq} \
      ~{if defined(replaceReplaceReadIds) then ("--replace-read-ids " +  '"' + replaceReplaceReadIds + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}