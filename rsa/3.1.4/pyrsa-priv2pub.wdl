version 1.0

task PyrsaPriv2pub {
  input {
    String inputInput
    String outputOutput
    String informInform
    String outOutForm
  }
  command <<<
    pyrsa-priv2pub \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(informInform) then ("--inform " +  '"' + informInform + '"') else ""} \
      ~{if defined(outOutForm) then ("--outform " +  '"' + outOutForm + '"') else ""}
  >>>
}