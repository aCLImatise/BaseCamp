version 1.0

task SgaOview {
  input {
    Boolean verboseVerbose
    String idId
    String maxMaxOverhang
    String defaultDefaultPadding
  }
  command <<<
    sga oview \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{if defined(maxMaxOverhang) then ("--max-overhang " +  '"' + maxMaxOverhang + '"') else ""} \
      ~{if defined(defaultDefaultPadding) then ("--default-padding " +  '"' + defaultDefaultPadding + '"') else ""}
  >>>
}