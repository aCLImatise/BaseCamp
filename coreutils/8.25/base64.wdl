version 1.0

task Base64 {
  input {
    Boolean decodeDecode
    Boolean ignoreIgnoreGarbage
    String wrapWrap
  }
  command <<<
    base64 \
      ~{true="--decode" false="" decodeDecode} \
      ~{true="--ignore-garbage" false="" ignoreIgnoreGarbage} \
      ~{if defined(wrapWrap) then ("--wrap " +  '"' + wrapWrap + '"') else ""}
  >>>
}