version 1.0

task BedExtendRanges {
  input {
    Boolean hostHost
    Boolean userUser
    Boolean passwordPassword
    Boolean tabTab
    String verboseVerbose
  }
  command <<<
    bedExtendRanges \
      ~{true="-host" false="" hostHost} \
      ~{true="-user" false="" userUser} \
      ~{true="-password" false="" passwordPassword} \
      ~{true="-tab" false="" tabTab} \
      ~{if defined(verboseVerbose) then ("- verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}