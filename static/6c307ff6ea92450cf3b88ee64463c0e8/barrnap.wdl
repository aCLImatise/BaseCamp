version 1.0

task Barrnap.py {
  input {
    String kingdomKingdom
    String threadsThreads
    String evalueEvalue
    String lenLenCutOff
    String rejectReject
    Boolean inInCseq
    Boolean citationCitation
  }
  command <<<
    barrnap.py \
      ~{if defined(kingdomKingdom) then ("--kingdom " +  '"' + kingdomKingdom + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(lenLenCutOff) then ("--lencutoff " +  '"' + lenLenCutOff + '"') else ""} \
      ~{if defined(rejectReject) then ("--reject " +  '"' + rejectReject + '"') else ""} \
      ~{true="--incseq" false="" inInCseq} \
      ~{true="--citation" false="" citationCitation}
  >>>
}