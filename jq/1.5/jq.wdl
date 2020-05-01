version 1.0

task Jq {
  input {
    Boolean cC
    Boolean nN
    Boolean eE
    Boolean sS
    Boolean rR
    Boolean rR
    Boolean cC
    Boolean mM
    Boolean sS
    Boolean tabTab
    String argArg
    String argArgJson
    String slurpSlurpFile
  }
  command <<<
    jq \
      ~{true="-c" false="" cC} \
      ~{true="-n" false="" nN} \
      ~{true="-e" false="" eE} \
      ~{true="-s" false="" sS} \
      ~{true="-r" false="" rR} \
      ~{true="-R" false="" rR} \
      ~{true="-C" false="" cC} \
      ~{true="-M" false="" mM} \
      ~{true="-S" false="" sS} \
      ~{true="--tab" false="" tabTab} \
      ~{if defined(argArg) then ("--arg " +  '"' + argArg + '"') else ""} \
      ~{if defined(argArgJson) then ("--argjson " +  '"' + argArgJson + '"') else ""} \
      ~{if defined(slurpSlurpFile) then ("--slurpfile " +  '"' + slurpSlurpFile + '"') else ""}
  >>>
}