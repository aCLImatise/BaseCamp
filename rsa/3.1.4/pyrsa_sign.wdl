version 1.0

task PyrsaSign {
  input {
    String inputInput
    String outputOutput
    String keyKeyForm
    String? privatePrivateKey
    String? hashHashMethod
  }
  command <<<
    pyrsa-sign \
      ~{privatePrivateKey} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(keyKeyForm) then ("--keyform " +  '"' + keyKeyForm + '"') else ""} \
      ~{hashHashMethod}
  >>>
}