version 1.0

task PslPretty {
  input {
    Boolean axtAxt
    String dotDot
    Boolean longLong
    File checkCheck
    String? inInPsl
    String? targetTargetLst
    String? queryQueryLst
    String? prettyPrettyOut
  }
  command <<<
    pslPretty \
      ~{inInPsl} \
      ~{true="-axt" false="" axtAxt} \
      ~{if defined(dotDot) then ("-dot " +  '"' + dotDot + '"') else ""} \
      ~{true="-long" false="" longLong} \
      ~{if defined(checkCheck) then ("-check " +  '"' + checkCheck + '"') else ""} \
      ~{targetTargetLst} \
      ~{queryQueryLst} \
      ~{prettyPrettyOut}
  >>>
}