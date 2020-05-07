version 1.0

task MtsvSignature {
  input {
    Boolean familyFamily
    Boolean genusGenus
    Boolean vV
    String indexIndex
    String inputInput
    String lcaLca
    String threadsThreads
    String outputOutput
  }
  command <<<
    mtsv-signature \
      ~{true="--family" false="" familyFamily} \
      ~{true="--genus" false="" genusGenus} \
      ~{true="-v" false="" vV} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(lcaLca) then ("--lca " +  '"' + lcaLca + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}