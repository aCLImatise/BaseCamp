version 1.0

task CrbBlast {
  input {
    String queryQuery
    String targetTarget
    String evalueEvalue
    String threadsThreads
    String outputOutput
    Boolean splitSplit
  }
  command <<<
    crb-blast \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--split" false="" splitSplit}
  >>>
}