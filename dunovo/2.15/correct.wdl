version 1.0

task Correct.py {
  input {
    Boolean debugDebug
    Boolean phonePhoneHome
    Boolean galaxyGalaxy
    Boolean testTest
    String? familiesFamilies
    String? readsReads
    String? samSam
  }
  command <<<
    correct.py \
      ~{familiesFamilies} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--phone-home" false="" phonePhoneHome} \
      ~{true="--galaxy" false="" galaxyGalaxy} \
      ~{true="--test" false="" testTest} \
      ~{readsReads} \
      ~{samSam}
  >>>
}