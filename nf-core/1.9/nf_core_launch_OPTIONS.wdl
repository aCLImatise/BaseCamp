version 1.0

task NfCoreLaunchOPTIONS {
  input {
    String paramsParams
    Boolean directDirect
  }
  command <<<
    nf-core launch OPTIONS \
      ~{if defined(paramsParams) then ("--params " +  '"' + paramsParams + '"') else ""} \
      ~{true="--direct" false="" directDirect}
  >>>
}