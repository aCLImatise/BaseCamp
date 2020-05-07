version 1.0

task PyrsaVerify {
  input {
    String inputInput
    String keyKeyForm
    String? publicPublicKey
    String? signatureSignatureFile
  }
  command <<<
    pyrsa-verify \
      ~{publicPublicKey} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(keyKeyForm) then ("--keyform " +  '"' + keyKeyForm + '"') else ""} \
      ~{signatureSignatureFile}
  >>>
}