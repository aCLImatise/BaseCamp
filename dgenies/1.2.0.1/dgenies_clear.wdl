version 1.0

task DgeniesClear {
  input {
    Boolean cC
    Boolean lL
    Boolean jJ
    Int maxMaxAge
    Boolean wW
  }
  command <<<
    dgenies clear \
      ~{true="-c" false="" cC} \
      ~{true="-l" false="" lL} \
      ~{true="-j" false="" jJ} \
      ~{if defined(maxMaxAge) then ("--max-age " +  '"' + maxMaxAge + '"') else ""} \
      ~{true="-w" false="" wW}
  >>>
}