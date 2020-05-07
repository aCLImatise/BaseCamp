version 1.0

task RnazBlast.pl {
  input {
    String blastBlastDir
    String databaseDatabase
    String seqSeqDir
    String eEValue
    Boolean manMan
    File? fileFile
  }
  command <<<
    rnazBlast.pl \
      ~{fileFile} \
      ~{if defined(blastBlastDir) then ("--blast-dir " +  '"' + blastBlastDir + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(seqSeqDir) then ("--seq-dir " +  '"' + seqSeqDir + '"') else ""} \
      ~{if defined(eEValue) then ("--e-value " +  '"' + eEValue + '"') else ""} \
      ~{true="--man" false="" manMan}
  >>>
}