version 1.0

task PyrsaDecryptBigfile {
  input {
    String inputInput
    String outputOutput
    String keyKeyForm
    String? privatePrivateKey
  }
  command <<<
    pyrsa-decrypt-bigfile \
      ~{privatePrivateKey} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(keyKeyForm) then ("--keyform " +  '"' + keyKeyForm + '"') else ""}
  >>>
}