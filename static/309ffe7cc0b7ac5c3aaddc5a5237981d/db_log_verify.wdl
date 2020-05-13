version 1.0

task DbLogVerify {
  input {
    Boolean ncNcVv
    String hH
    String hH
    String? environmentEnvironment
    String? homeHome
    String? forFor
    Int? internalInternal
    String? useUse
  }
  command <<<
    db_log_verify \
      ~{environmentEnvironment} \
      ~{true="-NcvV" false="" ncNcVv} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(hH) then ("-H " +  '"' + hH + '"') else ""} \
      ~{homeHome} \
      ~{forFor} \
      ~{internalInternal} \
      ~{useUse}
  >>>
}