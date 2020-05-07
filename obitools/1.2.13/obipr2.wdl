version 1.0

task Obipr2 {
  input {
    Boolean debugDebug
    Boolean withoutWithoutProgressBar
    String localLocalDb
    Boolean mM
  }
  command <<<
    obipr2 \
      ~{true="--DEBUG" false="" debugDebug} \
      ~{true="--without-progress-bar" false="" withoutWithoutProgressBar} \
      ~{if defined(localLocalDb) then ("--localdb " +  '"' + localLocalDb + '"') else ""} \
      ~{true="-m" false="" mM}
  >>>
}