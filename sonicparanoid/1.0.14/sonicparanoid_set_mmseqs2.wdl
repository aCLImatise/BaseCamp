version 1.0

task SonicparanoidSetMmseqs2 {
  input {
    String mmMmSeqsPath
    Boolean debugDebug
  }
  command <<<
    sonicparanoid-set-mmseqs2 \
      ~{if defined(mmMmSeqsPath) then ("--mmseqs-path " +  '"' + mmMmSeqsPath + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}