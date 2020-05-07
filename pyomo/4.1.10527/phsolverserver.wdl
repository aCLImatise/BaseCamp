version 1.0

task Phsolverserver {
  input {
    Boolean verboseVerbose
    String profileProfile
    Boolean disableDisableGc
    Boolean tracebackTraceback
    String userUserDefinedExtension
    String? hostnameHostname
  }
  command <<<
    phsolverserver \
      ~{hostnameHostname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{true="--disable-gc" false="" disableDisableGc} \
      ~{true="--traceback" false="" tracebackTraceback} \
      ~{if defined(userUserDefinedExtension) then ("--user-defined-extension " +  '"' + userUserDefinedExtension + '"') else ""}
  >>>
}