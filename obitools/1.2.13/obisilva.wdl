version 1.0

task Obisilva {
  input {
    Boolean debugDebug
    Boolean withoutWithoutProgressBar
    Boolean ssuSsu
    Boolean lsuLsu
    Boolean parcParc
    Boolean refRef
    Boolean nrNr
    Boolean truncTrunc
    String localLocalDb
    Boolean mM
  }
  command <<<
    obisilva \
      ~{true="--DEBUG" false="" debugDebug} \
      ~{true="--without-progress-bar" false="" withoutWithoutProgressBar} \
      ~{true="--ssu" false="" ssuSsu} \
      ~{true="--lsu" false="" lsuLsu} \
      ~{true="--parc" false="" parcParc} \
      ~{true="--ref" false="" refRef} \
      ~{true="--nr" false="" nrNr} \
      ~{true="--trunc" false="" truncTrunc} \
      ~{if defined(localLocalDb) then ("--localdb " +  '"' + localLocalDb + '"') else ""} \
      ~{true="-m" false="" mM}
  >>>
}