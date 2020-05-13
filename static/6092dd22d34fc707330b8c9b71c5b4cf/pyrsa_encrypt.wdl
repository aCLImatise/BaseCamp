version 1.0

task PyrsaEncrypt {
  input {
    String inputInput
    String outputOutput
    String keyKeyForm
    String? publicPublicKey
  }
  command <<<
    pyrsa-encrypt \
      ~{publicPublicKey} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(keyKeyForm) then ("--keyform " +  '"' + keyKeyForm + '"') else ""}
  >>>
}