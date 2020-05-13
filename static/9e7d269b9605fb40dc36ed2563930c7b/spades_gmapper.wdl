version 1.0

task SpadesGmapper {
  input {
    String kK
    String tT
    String tmpTmpDir
  }
  command <<<
    spades-gmapper \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp-dir " +  '"' + tmpTmpDir + '"') else ""}
  >>>
}