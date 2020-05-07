version 1.0

task GeoDL {
  input {
    Boolean metaMeta
    Boolean dryDry
    Boolean sS
    String? gseGse
  }
  command <<<
    geoDL \
      ~{gseGse} \
      ~{true="--meta" false="" metaMeta} \
      ~{true="--dry" false="" dryDry} \
      ~{true="-s" false="" sS}
  >>>
}