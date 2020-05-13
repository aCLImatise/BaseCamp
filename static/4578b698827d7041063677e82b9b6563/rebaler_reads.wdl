version 1.0

task RebalerReads {
  input {
    Boolean dD
    String tT
    Boolean randomRandom
  }
  command <<<
    rebaler reads \
      ~{true="-d" false="" dD} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--random" false="" randomRandom}
  >>>
}