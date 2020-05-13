version 1.0

task PyrsaKeygen {
  input {
    String pubPubOut
    String outOut
    String formForm
    String? keyKeySize
  }
  command <<<
    pyrsa-keygen \
      ~{keyKeySize} \
      ~{if defined(pubPubOut) then ("--pubout " +  '"' + pubPubOut + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(formForm) then ("--form " +  '"' + formForm + '"') else ""}
  >>>
}