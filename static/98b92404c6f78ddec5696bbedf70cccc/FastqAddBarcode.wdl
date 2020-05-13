version 1.0

task FastqAddBarcode {
  input {
    File in1In1
    File in2In2
    File inInBarcode
    File out1Out1
    File out2Out2
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    FastqAddBarcode \
      ~{if defined(in1In1) then ("-in1 " +  '"' + in1In1 + '"') else ""} \
      ~{if defined(in2In2) then ("-in2 " +  '"' + in2In2 + '"') else ""} \
      ~{if defined(inInBarcode) then ("-in_barcode " +  '"' + inInBarcode + '"') else ""} \
      ~{if defined(out1Out1) then ("-out1 " +  '"' + out1Out1 + '"') else ""} \
      ~{if defined(out2Out2) then ("-out2 " +  '"' + out2Out2 + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}