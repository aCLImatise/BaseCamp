version 1.0

task PyrsaDecrypt {
  input {
    String inputInput
    String outputOutput
    String keyKeyForm
    String? privatePrivateKey
  }
  command <<<
    pyrsa-decrypt \
      ~{privatePrivateKey} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(keyKeyForm) then ("--keyform " +  '"' + keyKeyForm + '"') else ""}
  >>>
}