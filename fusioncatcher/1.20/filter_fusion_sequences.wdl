version 1.0

task FilterFusionSequences.py {
  input {
    String inputInput
    String bannedBanned
    String outputOutput
    String removedRemoved
    String windowWindow
    Boolean quietQuiet
    String authorAuthor
  }
  command <<<
    filter_fusion_sequences.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(bannedBanned) then ("--banned " +  '"' + bannedBanned + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(removedRemoved) then ("--removed " +  '"' + removedRemoved + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""}
  >>>
}