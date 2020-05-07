version 1.0

task Refseqsplit.py {
  input {
    File fileFile
    String dirDir
    String prefixPrefix
    String tT
    String tT
    Boolean vV
  }
  command <<<
    refseqsplit.py \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}