version 1.0

task CATPrepare {
  input {
    Boolean freshFresh
    Boolean existingExisting
    Boolean dD
    Boolean tT
    Boolean pathPathToDiamond
    Boolean quietQuiet
    Boolean noNoLog
    Boolean nN
  }
  command <<<
    CAT prepare \
      ~{true="--fresh" false="" freshFresh} \
      ~{true="--existing" false="" existingExisting} \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="--path_to_diamond" false="" pathPathToDiamond} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--no_log" false="" noNoLog} \
      ~{true="-n" false="" nN}
  >>>
}