version 1.0

task Retaxdump {
  input {
    Boolean vV
    File nN
  }
  command <<<
    retaxdump \
      ~{true="-V" false="" vV} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""}
  >>>
}