version 1.0

task Dedup {
  input {
    String inputInput
    Boolean mergedMerged
    String outputOutput
    Boolean unsortedUnsorted
  }
  command <<<
    dedup \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--merged" false="" mergedMerged} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--unsorted" false="" unsortedUnsorted}
  >>>
}