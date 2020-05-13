version 1.0

task TripailleEntityAddEntityOPTIONS {
  input {
    String paramsParams
  }
  command <<<
    tripaille entity add_entity OPTIONS \
      ~{if defined(paramsParams) then ("--params " +  '"' + paramsParams + '"') else ""}
  >>>
}